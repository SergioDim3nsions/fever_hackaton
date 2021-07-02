import 'package:fever_hackaton/plan_model.dart';

class Constants {
  static final String concert1 =
      "https://images.unsplash.com/photo-1514320291840-2e0a9bf2a9ae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=100";
  static final String concert2 =
      "https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=100";
  static final String cinema =
      "https://images.unsplash.com/photo-1608170825938-a8ea0305d46c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80";
  static final String theater =
      "https://images.unsplash.com/photo-1580809361436-42a7ec204889?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=80";
  static final String healthy =
      "https://images.unsplash.com/photo-1611888474857-3d559f0163be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80";
  static final String burger =
      "https://images.unsplash.com/photo-1561758033-7e924f619b47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=80";
  static final String museum =
      "https://images.unsplash.com/photo-1524014482380-0988169f598d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80";
  static final String abstract =
      "https://images.unsplash.com/photo-1527698952067-61fc35796fcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=80";



  static final String plan1 = "https://fever.imgix.net/plan/photo/67dc2820-5f31-11eb-b783-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan2 = "https://fever.imgix.net/plan/photo/198b2a76-1b5b-11ea-bf03-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan3 = "https://fever.imgix.net/plan/photo/edce36e8-5268-11ea-bf03-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan4 = "https://fever.imgix.net/plan/photo/fc61fc8c-81ae-11eb-b783-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan5 = "https://fever.imgix.net/plan/photo/39091d30-fa6c-11e9-bf03-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan6 = "https://fever.imgix.net/plan/photo/1f052430-e80f-11e8-a7f4-067dfd978c4d.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan7 = "https://fever.imgix.net/plan/photo/ab2d45e1-3d00-11ea-bf03-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan8 = "https://fever.imgix.net/plan/photo/034d598e-7691-11eb-b783-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan9 = "https://fever.imgix.net/plan/photo/71da0628-b6ec-11ea-bf03-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan10 = "https://fever.imgix.net/plan/photo/3ce279ca-146e-11eb-bf03-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";
  static final String plan11 = "https://fever.imgix.net/plan/photo/c937e184-7b62-11eb-b783-06551cb39bc6.jpg?w=550&h=550&auto=format&fm=jpg";

  static final String viejunoText = """
Las etapas de la vida se han diluido. El mito de la eterna juventud está más vivo que nunca, pero siempre hay quien se siente viejo a los 30. Ese eres tú.
Te gusta salir y los buenos planes, pero con comodidad. Transformas el camping el glamping, vas de festival, pero con pase VIP.
No estás solo. Los de tu tipo sois raros, pero os conocéis, os juntáis para vuestros planazos y no os importa lo que opinen los demás. Eso es lucir la viejunidad con orgullo. Enhorabuena.
  """;

  static List<PlanModel> getPlans() {
    final List<PlanModel> list = [
      PlanModel(id: "1", image: plan2, name: "Candlelight: Mozart, Réquiem bajo la luz de las velas" , url: "https://feverup.com/m/77806"),
      PlanModel(id: "1", image: plan9, name: "Entradas para museo de las ilusiones", url: "https://feverup.com/m/87806"),
      PlanModel(id: "1", image: plan11, name: "La fabrica de chocolate", url: "https://feverup.com/m/92975"),
      PlanModel(id: "1", image: plan10, name: "Experience interactiva en Sweet Experience", url: "https://feverup.com/m/92796"),
      PlanModel(id: "1", image: plan3, name: "Amor y Redes Sociales: pon a prueba a tu pareja", url: "https://feverup.com/m/80696"),
      PlanModel(id: "1", image: plan4, name: "Entradas para Cine Yelmo: ¡toda la cartelera!", url: "https://feverup.com/m/54872"),
      PlanModel(id: "1", image: plan6, name: "SteakBurger: menú", url: "https://feverup.com/m/69982"),
      PlanModel(id: "1", image: plan7, name: "Pizzart: menu con pizza", url: "https://feverup.com/m/83065"),
    ];
    return list;
  }
}
