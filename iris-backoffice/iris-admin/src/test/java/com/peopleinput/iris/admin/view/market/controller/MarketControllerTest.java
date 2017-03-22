package com.peopleinput.iris.admin.view.market.controller;

import com.peopleinput.iris.admin.AdminApplicationStartup;
import com.peopleinput.iris.admin.view.market.mapper.market.MarketFormToMarketMapper;
import com.peopleinput.iris.admin.view.market.mapper.market.MarketToMarketFormMapper;
import com.peopleinput.iris.admin.view.market.model.MarketForm;
import com.peopleinput.iris.admin.view.market.service.MarketService;
import com.peopleinput.iris.admin.spring.resolver.IrisAdminView;
import com.peopleinput.iris.domain.admin.builder.MarketBuilder;
import com.peopleinput.iris.domain.admin.model.Market;
import com.peopleinput.iris.admin.test.IrisMockMvc;
import com.peopleinput.iris.admin.test.MockitoAnnotationsRule;
import org.junit.*;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.*;

import static org.mockito.Matchers.any;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;


/**
 * Created by souraya on 23/02/16.
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = AdminApplicationStartup.class)
public class MarketControllerTest {

  @InjectMocks
  MarketController marketController;

  @Mock
  MarketService marketService;

  @Mock
  MarketFormToMarketMapper marketFormToMarketMapper;

  @Mock
  MarketToMarketFormMapper marketToMarketFormMapper;

  @Rule
  public MockitoAnnotationsRule mockitoAnnotationsRule = new MockitoAnnotationsRule(this);

  @Rule
  public IrisMockMvc mockMvc = new IrisMockMvc(marketController);


  @Before
  public void setUp() throws Exception {
    when(marketService.listAll()).thenReturn(newMarkets());
    when(marketService.getById(1L)).thenReturn(newMarket());
    when(marketToMarketFormMapper.apply(any(Market.class))).thenReturn(new MarketForm());
    when(marketFormToMarketMapper.apply(any(MarketForm.class))).thenReturn(new Market());
  }

  @After
  public void tearDown() throws Exception {

  }

  @Test
  public void testShowMarketsList() throws Exception {

    mockMvc.perform(get("/markets"))
            .andExpect(status().isOk())
            .andExpect(model().attributeExists("markets"))
            .andExpect(mockMvc.view(IrisAdminView.MARKET_LIST));

  }

  @Test
  public void testShowMarket() throws Exception {
    mockMvc.perform(get("/market/1"))
            .andExpect(status().isOk())
            .andExpect(model().attributeExists("marketForm"))
            .andExpect(mockMvc.view(IrisAdminView.MARKET_VIEW));
  }

  @Test
  public void testNewMarket() throws Exception {
    mockMvc.perform(get("/market"))
            .andExpect(status().isOk())
            .andExpect(model().attributeExists("marketForm"))
            .andExpect(mockMvc.view(IrisAdminView.MARKET_EDIT_CREATE));
  }

  @Test
  public void testSaveMarket() throws Exception {

    mockMvc.perform(post("/market"))
            .andExpect(status().isOk())
            .andExpect(model().attribute("marketForm", marketToMarketFormMapper.apply(newMarket())));
  }

  @Test
  public void testEdit() throws Exception {
    mockMvc.perform(get("/market/edit/1"))
            .andExpect(status().isOk())
            .andExpect(model().attributeExists("marketForm"))
            .andExpect(mockMvc.view(IrisAdminView.MARKET_EDIT_CREATE));
  }

  @Test
  public void testDelete() throws Exception {
    mockMvc.perform(get("/market/delete/1"))
            .andExpect(status().is3xxRedirection())
            .andExpect(mockMvc.redirect("/markets"));
  }

  private static Market newMarket(){
    Market market3 = new MarketBuilder("marche3","marche du 3").build();
    return market3;
  }
  private static List<Market> newMarkets(){
    List<Market> markets = new ArrayList<Market>();
    Market market1 = new MarketBuilder("marche1","marche du 1").build();
    Market market2 = new MarketBuilder("marche2","marche du 2").build();

    markets.add(market1);
    markets.add(market2);

    return markets;
  }
}