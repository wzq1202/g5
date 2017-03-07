Ext.onReady(function() {
	
	/**
	 * 数据存储
	 */
	var store = new Ext.data.Store({
		autoLoad : {
			params : {
				start : 0,
				limit : 20
			}
		},
		
		proxy : new Ext.data.HttpProxy({
			url : _ctxpath + '/article/getAll.do'
		}),
		reader : new Ext.data.JsonReader({
			totalProperty : 'TOTALCOUNT',
			root : 'ROOT'
		}, [{
			name : 'id'
		},{
			name : 'name'
		},{
			name : 'iscurrent'
		},{
			name : 'ch_date'
		}])
	});
	
	var searchPanel = new Ext.form.FormPanel({
		width : 1000,
		autoHeight : true,
		layout : "form",
		labelWidth : 65,
		padding : '5 0 0 0',
		labelAlign : "right",
		border : false,
		defaults : {
			border : false
		},
		items : [{
			layout : 'hbox',
			defaults : {
				border : false
			},
			items : [{
				layout : 'form',
				width : 200,
				height : 30,
				align : 'left',
				items : [{
					fieldLabel : "名称",
					align : 'left',
					name : 'name',
					xtype : "textfield",
					width : 120
				}]
			},/*{
				layout : 'form',
				width : 200,
				height : 30,
				items : [{
					fieldLabel : "学号",
					name : 'cmis',
					xtype : "textfield",
					width : 120
				}]
			},*/{
				layout : 'form',
				width : 200,
				height : 30,
				items : []
			},{
				xtype : "button",
				text : '查询',
				iconCls : 'previewIcon',
				width : 80,
				handler : function(){
					$search(searchPanel,gridPanel);
				}
			}]
		}]
	});
	
	var sm = new Ext.grid.CheckboxSelectionModel({
		singleSelect : true
	});
	var cm = new Ext.grid.ColumnModel([new Ext.grid.RowNumberer(), sm, {
		header : 'id',
		dataIndex : 'id',
		hidden : true // 隐藏列
	},{
		header : '试卷名称',
		sortable: true,
		dataIndex : 'name',
		width : 80
	},{
		header : '日期',
		sortable: true,
		dataIndex : 'ch_date',
		width : 80
	}/*,{
		header : '是否当前',
		sortable: true,
		dataIndex : 'iscurrent',
		renderer : function(value , meta , rec){
			if(value == '1'){
				return '<font color="green">是</font>' ;
			}else{
				return '否' ;
			}
		}
	}*/]);
	
	var bbar = new G4.PagingBar({store:store});
	
	var gridPanel = new Ext.grid.GridPanel({
		viewConfig : {
			forceFit : true
		},
		title : '<span style="font-weight:normal">试卷列表</span>',
		autoScroll : true,
		region : 'center',
		store : store,
		loadMask : {
			msg : '正在加载表格数据,请稍等...'
		},
		stripeRows : true,
		frame : true,
		cm : cm,
		sm : sm,
		tbar : [{
			id : 'id_add_btn',
			text : '新增试卷',
			iconCls : 'page_addIcon',
			handler : function() {
				new ArticleForm({title : '新增试卷',callback:function(){
					gridPanel.getStore().reload();
				}}).show();
			}
		}, '-',{
			id : 'id_update_btn',
			text : '编辑试卷',
			iconCls : 'page_edit_1Icon',
			handler : function() {
				var rec = gridPanel.getSelectionModel().getSelected();
				if(rec == null){
					Ext.Msg.alert('提示信息', '请选择一条记录');
					return ;
				}
				
				new ArticleForm({id : rec.data.id, flag : 'edit', title : '编辑试卷', callback:function(){
					gridPanel.getStore().reload();
				}}).show();
			}
		},'-',{
			id : 'id_del_btn',
			text : '删除试卷',
			iconCls : 'page_delIcon',
			handler : function() {
				var rec = gridPanel.getSelectionModel().getSelected();
				if (rec == null) {
					Ext.Msg.alert('提示:', '请先选中项目');
					return;
				}
				
				del(rec.data.id);
			}
		},/*'-',{
			id : 'id_update_current_btn',
			text : '当前试卷',
			iconCls : 'lockIcon',
			handler : function() {
				var rec = gridPanel.getSelectionModel().getSelected();
				if (rec == null) {
					Ext.Msg.alert('提示:', '请先选中项目');
					return;
				}
				
//				del(rec.data.id);
			}
		},*/'-',{
			text : '刷新',
			iconCls : 'arrow_refreshIcon',
			handler : function() {
				store.reload();
			}
		}],
		
		bbar : bbar
	});
	
	/**
	 * 布局
	 */
	new Ext.Viewport({
		layout : 'border',
		items : [{
			region : 'center',
			layout : 'fit',
			border : false,
			items : [gridPanel]
		},{
			region : 'north',
			height : 60,
			border : false,
			items : [searchPanel]
		}]
	});
	
	function del(id){
		Ext.Msg.show({
			title : '提示信息',
			msg : '确定删除吗？',
			icon: Ext.MessageBox.INFO,
			buttons : Ext.MessageBox.OKCANCEL,
			fn : function(btnId,text,opt){
				if(btnId == 'ok'){
					Ext.Ajax.request({
						url: _ctxpath + '/article/delete.do',
						method : 'GET',
						params : {
							id : id
						},
						success : function(response,options){
							var result = Ext.decode(response.responseText);
							Ext.Msg.show({
			        			title : '提示信息',
			        			msg : result.msg,
			        			icon: Ext.MessageBox.INFO,
			        			buttons : Ext.MessageBox.OK
			        		});
							if(result.success == true){
								gridPanel.getStore().reload();
							}
						},
						failure : function(response,options){
							
						}
					});
				}
			}
		});
	}
});
