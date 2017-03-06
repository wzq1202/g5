Ext.ns('G4');
G4.PagingBar = Ext.extend(Ext.PagingToolbar, {
	pagesize_combo : null,
	store : null,
	constructor : function(param) {
		this.initUIComponents(param);
		G4.PagingBar.superclass.constructor.call(this, {
			pageSize : param.store.baseParams.limit ? param.store.baseParams.limit : 20,
			store : store,
			displayInfo : true,
			displayMsg : '显示{0}条到{1}条,共{2}条',
			emptyMsg : "没有符合条件的记录",
			items : [ '-', '&nbsp;&nbsp;', pagesize_combo ]
		});
	},
	// 初始化控件
	initUIComponents : function(param) {
		store = param.store;
		pagesize_combo = new Ext.form.ComboBox({
			name : 'pagesize',
			hiddenName : 'pagesize',
			typeAhead : true,
			triggerAction : 'all',
			lazyRender : true,
			mode : 'local',
			store : new Ext.data.ArrayStore({
				fields : [ 'value', 'text' ],
				data : 	[[ 20, '20条/页' ],
						[ 50, '50条/页' ], [ 100, '100条/页' ], [ 250, '250条/页' ],
						[ 500, '500条/页' ] ]
			}),
			valueField : 'value',
			displayField : 'text',
			value : 20,
			editable : false,
			width : 85,
			listeners : {
				'select' : function(combox) {
					store.reload({
						params : {
							start : 0,
							limit : parseInt(combox.getValue())
						}
					});
					combox.ownerCt.pageSize = combox.getValue();
				}
			}
		});
	}
});


function $search2(gridPanel,deParams){
	var store = gridPanel.getStore();
	var bbar = gridPanel.getBottomToolbar() ;
	Ext.apply(store.baseParams,deParams);
	//获取url 地址中的参数
	var idx = (store.proxy.url).lastIndexOf('?');
	if(idx > -1){
		var url_param = (store.proxy.url).substr(idx + 1);
		if(url_param != null && url_param != ''){
			Ext.apply(store.baseParams,Ext.urlDecode(url_param));
		}
	}
	if(bbar != null){ //包含分页
		store.baseParams.start = 0;
		store.baseParams.limit = bbar.pageSize;
		bbar.moveFirst();
	}else{	//不包含分页
		store.reload();
	}
}

function $search(searchPanel,gridPanel){
	if (searchPanel.getForm().isValid()) {// 如果合法
		var store = gridPanel.getStore();
		var baseParam = Ext.Ajax.serializeForm(searchPanel.getForm().getEl());
		var deParams = Ext.urlDecode(baseParam);
		var bbar = gridPanel.getBottomToolbar() ;
		deParams.start = 0;
		if(bbar != null){
			deParams.limit = bbar.pageSize;
			store.baseParams = deParams;
			bbar.moveFirst();
		}else{
			deParams.limit = store.baseParams.limit;
			store.load({
				params:deParams
			});
		}
	}
}