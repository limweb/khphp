webpackJsonp([5],{299:function(t,i,a){a(383);var e=a(5)(a(327),a(408),null,null);t.exports=e.exports},327:function(t,i,a){"use strict";function e(t){return t&&t.__esModule?t:{default:t}}Object.defineProperty(i,"__esModule",{value:!0});var n=a(31),s=e(n),l=a(11),o=e(l),r=a(6),c=a(32),d=e(c);i.default={name:"productdetails",mounted:function(){this.lotbyname(this.$route.params.lotid),this.$store.state.currentlot=this.$route.params.lotid,console.log("mount",this.$store.state.currentlot)},methods:(0,o.default)({},(0,r.mapActions)(["lotbyname","delbillbyid","createnewbill"]),{print:function(){window.print()},addbill:function(){var t=JSON.parse((0,s.default)(this.$store.state.app.newbill));t.lotid=this.lot.id,t.lot_name=this.lot.lot_name,t.cate=this.lot.cate,t.action="NEW",t.save=!1,t.isNew=!0,console.log("addbile in lot",t,this.lot),this.createnewbill(t),this.$router.push("/addrcproduct")},removebill:function(t,i){var a=this;console.log("index=",t,"billid=",i),d.default.confirm({message:"ต้องการที่จะลบ บิลรายการนี้หรือไม่ ?!",size:"small",callback:function(t){t&&(console.log("remove bill",i,t),a.delbillbyid(i))}})},editbill:function(t,i){console.log("editbill--",i,this.lot);var a=JSON.parse((0,s.default)(i));a.action="edit",a.save=!1,a.isNew=!0,a.lot_id=this.lot.id,a.cate=this.lot.cate,a.lot_name=this.lot.lot_name,a.date=i.created_date,this.createnewbill(a),this.$router.push("/addrcproduct")}}),computed:(0,o.default)({},(0,r.mapState)(["lot"]),{billength:function(){return void 0!=this.lot.bills.length?this.lot.bills.length:1},chklot:function(){return void 0!=this.lot?1:0},scrheight:function(){return window.screen.height?window.screen.height:450}})}},362:function(t,i,a){i=t.exports=a(292)(!0),i.push([t.i,"@import url(/static/js/plugins/datatables/dataTables.bootstrap.css);",""]),i.push([t.i,'*{font-size:15px!important}.content{min-height:450px;height:100%!important}table.dataTable thead .sorting:after,table.dataTable thead .sorting_asc:after,table.dataTable thead .sorting_desc:after{font-family:FontAwesome}table.dataTable thead .sorting:after{content:" \\F0DC"}table.dataTable thead .sorting_asc:after{content:" \\F0DD"}table.dataTable thead .sorting_desc:after{content:" \\F0DE"}@page{margin:30 auto}@media print{*{font-size:14px!important}.noprint{display:none}.print{diskplay:block}}',"",{version:3,sources:["c:/works/kuiyu/kuihuad/src/components/modules/products/Productlotdetails.vue"],names:[],mappings:"AACA,EACI,wBAA0B,CAC7B,AACD,SACE,iBAAiB,AACjB,qBAAuB,CACxB,AAQD,wHAGE,uBAA2B,CAC5B,AACD,qCACE,gBAAkB,CACnB,AACD,yCACE,gBAAkB,CACnB,AACD,0CACE,gBAAkB,CACnB,AACD,MACE,cAAgB,CACjB,AACD,aACA,EACI,wBAAyB,CAC5B,AACD,SACI,YAAc,CACjB,AACD,OACI,cAAe,CAClB,CACA",file:"Productlotdetails.vue",sourcesContent:["\n* {\n    font-size:15px !important;\n}\n.content {\n  min-height:450px;\n  height: 100%!important;\n}\n/* Using the bootstrap style, but overriding the font to not draw in\n   the Glyphicons Halflings font as an additional requirement for sorting icons.\n   An alternative to the solution active below is to use the jquery style\n   which uses images, but the color on the images does not match adminlte.\n@import url('/static/js/plugins/datatables/jquery.dataTables.min.css');\n*/\n@import url('/static/js/plugins/datatables/dataTables.bootstrap.css');\ntable.dataTable thead .sorting:after,\ntable.dataTable thead .sorting_asc:after,\ntable.dataTable thead .sorting_desc:after {\n  font-family: 'FontAwesome';\n}\ntable.dataTable thead .sorting:after {\n  content: \" \\f0dc\";\n}\ntable.dataTable thead .sorting_asc:after {\n  content: \" \\f0dd\";\n}\ntable.dataTable thead .sorting_desc:after {\n  content: \" \\f0de\";\n}\n@page{\n  margin: 30 auto;\n}\n@media print {\n* {\n    font-size:14px!important;\n}\n.noprint {\n    display: none;\n}\n.print {\n    diskplay:block;\n}\n}\n"],sourceRoot:""}])},383:function(t,i,a){var e=a(362);"string"==typeof e&&(e=[[t.i,e,""]]),e.locals&&(t.exports=e.locals);a(293)("51f95c4c",e,!0)},408:function(t,i){t.exports={render:function(){var t=this,i=t.$createElement,a=t._self._c||i;return a("div",{staticClass:"content-wrapper"},[a("section",{staticClass:"content-header"},[a("h1",[t._v("รายละเอียด Lot ที่: "),a("small",[t._v(t._s(t.$route.params.lotid))])]),t._v(" "),t._m(0)]),t._v(" "),a("section",{staticClass:"content",staticStyle:{"min-height":"450px"}},[t.chklot?a("div",[a("div",{staticClass:"box box-widget"},[a("div",{staticClass:"box-header with-border"},[a("div",{staticClass:"user-block noprint"},[a("h3",{staticClass:"box-title noprint"},[t._v("รายละเอียด การรับสินค้า "+t._s(t.lot.id)+"/"+t._s(t.lot.lot_name))]),t._v(" "),a("button",{staticClass:"primary noprint",staticStyle:{width:"90px",float:"right"},attrs:{type:"button"},on:{click:t.addbill}},[t._v("Add Bill")]),t._v(" "),a("button",{staticClass:"primary noprint",staticStyle:{width:"90px",float:"right","margin-right":"10px"},attrs:{type:"button"},on:{click:t.print}},[t._v("Print")])]),t._v(" "),t._m(1)]),t._v(" "),a("div",{staticClass:"box-body"},[a("table",{staticClass:"table table-bordered table-striped"},[a("thead",[a("tr",[a("th",{staticClass:"print",staticStyle:{"text-align":"center"},attrs:{colspan:"4"}},[a("span",[t._v("รายละเอียด การรับสินค้า "+t._s(t.lot.id)+" / "+t._s(t.lot.lot_name)+" Total: "+t._s(Number(t.lot.total).toLocaleString("th-TH",{minimumFractionDigits:2}))+" "),a("b",[t._v("฿")]),t._v(" จำนวนบิล"+t._s(t.billength)+" ใบ ")])])]),t._v(" "),t._m(2)]),t._v(" "),a("tbody",t._l(t.lot.summary,function(i,e){return a("tr",[a("td",[t._v(t._s(i.product_code))]),t._v(" "),a("td",[t._v(t._s(i.name))]),t._v(" "),a("td",{attrs:{align:"right"}},[t._v(t._s(Number(i.qty).toLocaleString("th-TH",{minimumFractionDigits:2})))]),t._v(" "),a("td",{attrs:{align:"right"}},[t._v(t._s(Number(i.avg).toLocaleString("th-TH",{minimumFractionDigits:2})))])])}))]),t._v(" "),a("br"),t._v(" "),a("table",{staticClass:"table table-bordered table-striped"},[t._m(3),t._v(" "),a("tbody",t._l(t.lot.sumbycat,function(i){return a("tr",[a("td",[t._v(t._s(i.name))]),t._v(" "),a("td",{staticStyle:{"text-align":"right",width:"160px"}},[t._v(t._s(Number(i.qty).toLocaleString("th-TH",{minimumFractionDigits:2})))]),t._v(" "),a("td",{staticStyle:{"text-align":"right",width:"160px"}},[t._v(t._s(Number(i.avg).toLocaleString("th-TH",{minimumFractionDigits:2})))])])}))]),t._v(" "),a("br"),t._v(" "),a("table",{staticClass:"table table-bordered table-striped"},[t._m(4),t._v(" "),a("tbody",t._l(t.lot.bills,function(i,e){return a("tr",[a("td",{staticStyle:{width:"20px"}},[t._v(t._s(e+1))]),t._v(" "),a("td",{staticStyle:{width:"60px"}},[t._v(t._s(i.id))]),t._v(" "),a("td",[t._v(t._s(i.name))]),t._v(" "),a("td",{staticStyle:{"text-align":"right"},attrs:{align:"right"}},[t._v(t._s(Number(i.qty).toLocaleString("th-TH",{minimumFractionDigits:2})))]),t._v(" "),a("td",{staticStyle:{"text-align":"right"},attrs:{align:"right"}},[t._v(t._s(Number(i.total).toLocaleString("th-TH",{minimumFractionDigits:2})))])])})),t._v(" "),a("br"),t._v(" "),a("tfoot",[a("tr",{staticStyle:{"background-color":"#707bea",color:"aliceblue"}},[a("td",{attrs:{colspan:"3"}},[a("b",[t._v("เฉลี่ย รวม ")])]),t._v(" "),a("th",{staticStyle:{"text-align":"right"}},[t._v(t._s(Number(t.lot.sumx[0].qty).toLocaleString("th-TH",{minimumFractionDigits:2})))]),t._v(" "),a("th",{staticStyle:{"text-align":"right"}},[t._v(t._s(Number(t.lot.sumx[0].avg).toLocaleString("th-TH",{minimumFractionDigits:2})))])])])],1)])]),t._v(" "),t._l(t.lot.bills,function(i,e){return a("div",{staticClass:"box box-widget noprint"},[a("div",{staticClass:"box-header with-border"},[a("div",{staticClass:"user-block"},[a("span",{staticClass:"username"},[t._v("No:"+t._s(e+1)+" บิลเลขที่ :"+t._s(i.id)+" ")]),t._v(" "),a("span",{staticClass:"description"},[t._v("Name :"+t._s(i.name))])]),t._v(" "),a("div",{staticClass:"box-tools"},[a("button",{staticClass:"btn btn-warning btn-xs",attrs:{title:"edit bill"},on:{click:function(a){t.editbill(e,i)}}},[a("span",{staticClass:"glyphicon glyphicon-edit"})]),t._v(" "),a("button",{staticClass:"btn btn-danger btn-xs",attrs:{title:"Remove Bill"},on:{click:function(a){t.removebill(e,i.id)}}},[a("span",{staticClass:"glyphicon glyphicon-trash"})]),t._v(" "),t._m(5,!0)])]),t._v(" "),a("div",{staticClass:"box-body"},[a("table",{staticClass:"table table-bordered table-striped"},[t._m(6,!0),t._v(" "),a("tbody",t._l(i.billdetails,function(i,e){return a("tr",[a("td",[t._v(t._s(e+1))]),t._v(" "),a("td",[t._v(t._s(i.name))]),t._v(" "),a("td",{staticStyle:{"text-align":"right"}},[t._v(t._s(Number(i.qty).toLocaleString("th-TH",{minimumFractionDigits:2})))]),t._v(" "),a("td",{staticStyle:{"text-align":"right"}},[t._v(t._s(Number(i.price).toLocaleString("th-TH",{minimumFractionDigits:2})))]),t._v(" "),a("td",{staticStyle:{"text-align":"right"}},[t._v(t._s((i.qty*i.price).toLocaleString("th-TH",{minimumFractionDigits:2})))])])})),t._v(" "),a("tfoot",[a("tr",{staticStyle:{"background-color":"#237530",color:"aliceblue"}},[a("th",[t._v("Status ")]),t._v(" "),a("th",[t._v(" ")]),t._v(" "),a("th",[t._v(t._s(Number(i.qty).toLocaleString("th-TH",{minimumFractionDigits:2})))]),t._v(" "),a("th",[t._v(" ")]),t._v(" "),a("th",[t._v(t._s(Number(i.total).toLocaleString("th-TH",{minimumFractionDigits:2})))])])])],1)]),t._v(" "),a("div",{staticClass:"box-footer"},[t._v("\n             \n          ")])])})],2):a("div",[a("h2",[t._v("ยังไม่รายการสำหรับ Lot นี้ ")])])])])},staticRenderFns:[function(){var t=this,i=t.$createElement,a=t._self._c||i;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),t._v(" Home")])]),t._v(" "),a("li",[a("a",{attrs:{href:"#"}},[t._v("product")])]),t._v(" "),a("li",{staticClass:"active"},[t._v("lotdetails")])])},function(){var t=this,i=t.$createElement,a=t._self._c||i;return a("div",{staticClass:"box-tools noprint"},[a("button",{staticClass:"btn btn-box-tool",attrs:{type:"button","data-widget":"collapse"}},[a("i",{staticClass:"fa fa-minus"})])])},function(){var t=this,i=t.$createElement,a=t._self._c||i;return a("tr",{staticStyle:{"background-color":"#ea5b0b"}},[a("th",{staticStyle:{width:"160px"}},[t._v("รหัส")]),t._v(" "),a("th",[t._v("แยกตามชนิดผลไม้")]),t._v(" "),a("th",{staticStyle:{"text-align":"right",width:"160px"}},[t._v(" จำนวน (kg) ")]),t._v(" "),a("th",{staticStyle:{"text-align":"right",width:"160px"}},[t._v(" เฉลี่ยน/Kg ")])])},function(){var t=this,i=t.$createElement,a=t._self._c||i;return a("thead",[a("tr",{staticStyle:{"background-color":"aquamarine"}},[a("th",[t._v("แยกตาม ประเภทของผลไม้")]),t._v(" "),a("th",{staticStyle:{"text-align":"right",width:"160px"}},[t._v(" จำนวน (kg) ")]),t._v(" "),a("th",{staticStyle:{"text-align":"right",width:"160px"}},[t._v(" เฉลี่ยน/Kg ")])])])},function(){var t=this,i=t.$createElement,a=t._self._c||i;return a("thead",[a("tr",{staticStyle:{"background-color":"#ea5b0b"}},[a("th",{staticStyle:{width:"20px"}},[t._v("No.")]),t._v(" "),a("th",{staticStyle:{width:"80px"}},[t._v("Bill No.")]),t._v(" "),a("th",[t._v("ผู้ขาย")]),t._v(" "),a("th",{staticStyle:{"text-align":"right",width:"160px"}},[t._v(" จำนวน (kg) ")]),t._v(" "),a("th",{staticStyle:{"text-align":"right",width:"160px"}},[t._v(" จำนวนเงิน (บาท) ")])])])},function(){var t=this,i=t.$createElement,a=t._self._c||i;return a("button",{staticClass:"btn btn-box-tool",attrs:{type:"button","data-widget":"collapse"}},[a("i",{staticClass:"fa fa-minus"})])},function(){var t=this,i=t.$createElement,a=t._self._c||i;return a("thead",[a("tr",[a("th",[t._v("Id")]),t._v(" "),a("th",[t._v("ผลไม้")]),t._v(" "),a("th",[t._v("จำนวน (kg)")]),t._v(" "),a("th",[t._v("ราคา รับซื้อ")]),t._v(" "),a("th",[t._v("จำนวนเงิน")])])])}]}}});
//# sourceMappingURL=5.78299646e9b2a8eb5755.js.map