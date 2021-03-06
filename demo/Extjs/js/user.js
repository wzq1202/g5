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
			url : _ctxpath + '/user/getAll.do'
		}),
		reader : new Ext.data.JsonReader({
			totalProperty : 'TOTALCOUNT',
			root : 'ROOT'
		}, [{
			name : 'id'
		},{
			name : 'name'
		},{
			name : 'department'
		},{
			name : 'position'
		},{
			name : 'tel'
		},{
			name : 'declaration'
		},{
			name : 'reg_date'
		},{
			name : 'v_status'
		},{
			name : 'is_score'
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
					fieldLabel : "用户名",
					align : 'left',
					name : 'name',
					xtype : "textfield",
					width : 120
				}]
			},{
				layout : 'form',
				width : 200,
				height : 30,
				items : [{
					fieldLabel : "手机号",
					name : 'tel',
					xtype : "textfield",
					width : 120
				}]
			},{
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
		header : '用户名',
		sortable: true,
		dataIndex : 'name',
		width : 80
	},{
		header : '手机号',
		sortable: true,
		dataIndex : 'tel',
		width : 80
	},{
		header : '部门',
		sortable: true,
		dataIndex : 'department',
		width : 80
	},{
		header : '职位',
		sortable: true,
		dataIndex : 'position',
		width : 80
	},{
		header : '注册日期',
		sortable: true,
		dataIndex : 'reg_date',
		width : 80
	},{
		header : '是否认证',
		sortable: true,
		dataIndex : 'v_status',
		renderer : function(value , meta , rec){
			if(value == '1'){
				return '<font color="green">是</font>' ;
			}else{
				return '否' ;
			}
		}
	},{
		header : '类型',
		sortable: true,
		dataIndex : 'is_score',
		renderer : function(value , meta , rec){
			if(value == '1'){
				return '<font color="green">竞技类</font>' ;
			}else{
				return '友谊类' ;
			}
		}
	},{
		header : '宣言',
		sortable: true,
		dataIndex : 'declaration'
	}]);
	
	var bbar = new G4.PagingBar({store:store});
	
	var gridPanel = new Ext.grid.GridPanel({
		viewConfig : {
			forceFit : true
		},
		title : '<span style="font-weight:normal">用户列表</span>',
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
		tbar : [/*{
			id : 'id_add_btn',
			text : '新增试卷',
			iconCls : 'page_addIcon',
			handler : function() {
				new ArticleForm({title : '新增用户',callback:function(){
					gridPanel.getStore().reload();
				}}).show();
			}
		}, '-',*/{
			id : 'id_update_btn',
			text : '编辑用户',
			iconCls : 'page_edit_1Icon',
			handler : function() {
				var rec = gridPanel.getSelectionModel().getSelected();
				if(rec == null){
					Ext.Msg.alert('提示信息', '请选择一条记录');
					return ;
				}
				
				new UserForm({id : rec.data.id, flag : 'edit', title : '编辑用户', callback:function(){
					gridPanel.getStore().reload();
				}}).show();
			}
		},'-',{
			id : 'id_del_btn',
			text : '删除用户',
			iconCls : 'page_delIcon',
			handler : function() {
				var rec = gridPanel.getSelectionModel().getSelected();
				if (rec == null) {
					Ext.Msg.alert('提示:', '请先选中项目');
					return;
				}
				
				del(rec.data.id);
			}
		},'-',/*{
			id : 'id_update_current_btn',
			text : '认证',
			iconCls : 'lockIcon',
			handler : function() {
				var rec = gridPanel.getSelectionModel().getSelected();
				if (rec == null) {
					Ext.Msg.alert('提示:', '请先选中项目');
					return;
				}
				
				authentication(rec.data.id);
			}
		},'-',*/{
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
						url: _ctxpath + '/user/delete.do',
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
	//authentication
	
	function authentication(id){
		Ext.Msg.show({
			title : '提示信息',
			msg : '确定认证吗？',
			icon: Ext.MessageBox.INFO,
			buttons : Ext.MessageBox.OKCANCEL,
			fn : function(btnId,text,opt){
				if(btnId == 'ok'){
					Ext.Ajax.request({
						url: _ctxpath + '/user/authentication.do',
						method : 'POST',
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
