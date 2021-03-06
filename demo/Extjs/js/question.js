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
			url : _ctxpath + '/question/getAll.do'
		}),
		reader : new Ext.data.JsonReader({
			totalProperty : 'TOTALCOUNT',
			root : 'ROOT'
		}, [{
			name : 'id'
		},{
			name : 'article'
		},{
			name : 'order_by'
		},{
			name : 'question'
		},{
			name : 'question_type'
		},{
			name : 'answer'
		},{
			name : 'score'
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
					name : 'question',
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
				items : [/*{
					xtype : 'combo',
					width : 120,
					hiddenName : 'grade',
					emptyText : '请选择年级...',
					triggerAction : 'all',
					mode : 'local',
					store : new Ext.data.ArrayStore({
						fields : [ 'value', 'text' ],
						data : [['1','一年级'],['2','二年级'],['3','三年级'],['4','四年级'],['5','五年级'],['6','六年级']]
					}),
					valueField : 'value',
					displayField : 'text',
					editable : false,
					listeners : {// select监听函数
						select : function(combo, record, index) {
							Ext.getCmp('cbx_class').reset();
							Ext.getCmp('cbx_class').clearValue();
							Ext.getCmp('cbx_class').getStore().load({
								url : _ctxpath + '/student/getClassByGrade.do',
								params : {
									grade : combo.value
								}
							});
						}
					}
				}*/]
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
		header : 'cmis',
		dataIndex : 'cmis',
		hidden : true // 隐藏列
	},{
		header : '试卷',
		sortable: true,
		dataIndex : 'article',
		width : 80
	},{
		header : '题号',
		sortable: true,
		dataIndex : 'order_by',
		width : 60
	},{
		header : '题目',
		sortable: true,
		dataIndex : 'question'
	},{
		header : '正确答案',
		sortable: true,
		dataIndex : 'answer',
		width : 80
	},{
		header : '题目类型',
		sortable: true,
		dataIndex : 'question_type',
		width : 80,
		renderer : function(value , meta , rec){
			if(value == '1'){
				return '判断' ;
			}else if(value == '2'){
				return '单选' ;
			}else if(value == '3'){
				return  '多选' ;
			}else{
				return '未知' ;
			}
			
		}
	},{
		header : '分数',
		sortable: true,
		dataIndex : 'score',
		width : 80
	}]);
	
	var bbar = new G4.PagingBar({store:store});
	
	var gridPanel = new Ext.grid.GridPanel({
		viewConfig : {
			forceFit : true
		},
		title : '<span style="font-weight:normal">学生列表</span>',
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
			text : '新增试题',
			iconCls : 'page_addIcon',
			handler : function() {
				new QuestionForm({title : '新增试题',callback:function(){
					gridPanel.getStore().reload();
				}}).show();
			}
		}, '-',{
			id : 'id_update_btn',
			text : '编辑试题',
			iconCls : 'page_edit_1Icon',
			handler : function() {
				var rec = gridPanel.getSelectionModel().getSelected();
				if(rec == null){
					Ext.Msg.alert('提示信息', '请选择一条记录');
					return ;
				}
				
				new QuestionForm({id : rec.data.id, flag : 'edit', title : '编辑试题', callback:function(){
					gridPanel.getStore().reload();
				}}).show();
			}
		},'-',{
			id : 'id_del_btn',
			text : '删除试题',
			iconCls : 'page_delIcon',
			handler : function() {
				var rec = gridPanel.getSelectionModel().getSelected();
				if (rec == null) {
					Ext.Msg.alert('提示:', '请先选中项目');
					return;
				}
				
				del(rec.data.id);
			}
		},'-',{
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
						url: _ctxpath + '/question/delete.do',
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
