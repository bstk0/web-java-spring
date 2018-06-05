sap.ui.jsview("hello_eclipse.main", {

 /** Specifies the Controller belonging to this View.
 * In the case that it is not implemented, or that "null" is returned, this View\
 does not have a Controller.
 * @memberOf hello_eclipse.main
 */
 getControllerName : function() {
    return "hello_eclipse.main";
 },

 /** Is initially called once after the Controller has been instantiated. It is \
 the place where the UI is constructed.
 * Since the Controller is given to this method, its event handlers can be attac\
 hed right away.
 * @memberOf hello_eclipse.main
 */
 createContent : function(oController) {

var rad_group =
new sap.ui.commons.RadioButtonGroup({
items : [
new sap.ui.core.Item({
text : "Item 1",
}),
new sap.ui.core.Item({
text : "Item 2",
})
]
});

var toggle_button =
new sap.ui.commons.ToggleButton({
text : "Off",
lite : false,
style : sap.ui.commons.ButtonStyle.Reject,
pressed : false,
press :
[
function(oEvent) {
var control = oEvent.getSource();
if (this.getPressed() === false) {
this.setStyle(sap.ui.commons.ButtonStyle.Accept);
this.setText("On");
} else {
this.setStyle(sap.ui.commons.ButtonStyle.Reject);
this.setText("Off");
}
},
toggle_button
]
});

     //DatePicker
var yesterday = new Date();
yesterday.setDate(yesterday.getDate() - 1);
var date_picker = new sap.ui.commons.DatePicker({
locale : 'pt-BR',
yyyymmdd : yesterday.toISOString().slice(0,10).replace(/-/g,""),
});

     //ComboBox
var combo_box = new sap.ui.commons.ComboBox({
name : "country",
placeholder : "Country",
maxPopupItems : 4,
displaySecondaryValues : true,
selectedKey : "brazil",
// selectedItemId : "item_default",
items :
[
new sap.ui.core.ListItem({
text : "Brazil",
enabled : true,
key : "brazil",
additionalText : "South America",
}),
new sap.ui.core.ListItem("item_default",{
text : "Canada",
enabled : true,
key : "canada",
additionalText : "North America",
}),
new sap.ui.core.ListItem({
text : "Germany",
enabled : false,
key : "germany",
additionalText : "Europe",
})
],
});

//Consumindo Servico JSON
 var label_view_weather = new sap.ui.commons.TextView({
    text: "Temperatura em SP by openweathermap.org:", tooltip: "K - 273.15"
  });
  
var weather = new sap.ui.model.json.JSONModel("//api.openweathermap.org/data/2.5\/weather?q=Sao%20Paulo,BR&APPID=3bbe6911c1cf77173267b0d6cb358b76")
var text_view_weather = new sap.ui.commons.TextView({
text: {
path: "/main/temp",
formatter: function(t){
if (t) {
return t - 273.15; // Kelvin to Celcius}
}
else {
return "Loading...";
};
}
}
});
text_view_weather.setModel(weather);



//-- Tabela com Firebase - INICIO
var contas = new sap.ui.model.json.JSONModel("//dbengine.firebaseio.com/finan/contas.json")

var table = new sap.ui.table.Table("tab",
{
width: "90%",
visibleRowCount: 10,
selectionMode: sap.ui.table.SelectionMode.Multi,
selectionBehavior: sap.ui.table.SelectionBehavior.RowSelector,
selectedIndex: -1,
allowColumnReordering: true,
//navigationMode: sap.ui.table.NavigationMode.Paginator,
enableColumnReordering: true,
showNoData: true,
visibleRowCountMode: sap.ui.table.VisibleRowCountMode.Fixed,
fixedRowCount: 0,
minAutoRowCount: 5,
//noDataText: "Nenhum dado encontrado",
title: "Contas - from Firebase",
columns: [
	new sap.ui.table.Column(
	{
	width: "auto",
	label: "Nome",
	template: new sap.ui.commons.TextView()
	.bindProperty("text", "day"),
	}),

	new sap.ui.table.Column(
		{
		width: "auto",
		label: "Descr",
		template: new sap.ui.commons.TextView()
		.bindProperty("text", "descr"),
	}),
]
});

table.setModel(contas);
table.bindRows("/");
//-- Tabela com Firebase - FIM


  var text1 = new sap.ui.commons.TextView({
    text: "Teste...", tooltip: "Toooooooooltip", semanticColor: sap.ui.commons.TextViewColor.Negative
  });

    var but_press_me = new sap.ui.commons.Button({
        text : "View : Press me!",
        tooltip : "Clique para o pop-up!",
    //press : function() {
    //    alert("Button was pressed");
    //}
        press: oController.onPressButton
    });
    //return but_press_me;

   //LINK VOLTAR
   var linkVoltar = new sap.ui.commons.Link({
text : "Voltar",
href : "/",
//target : "_blank"
});

   //PRINCIPAL
   var vertical_layout = new sap.ui.layout.VerticalLayout(
   {
     content: [ text1, but_press_me, rad_group, toggle_button, date_picker, combo_box, label_view_weather, text_view_weather , table, linkVoltar ]
   });
   return vertical_layout;

 }


 });