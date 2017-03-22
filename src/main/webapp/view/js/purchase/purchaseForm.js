Ext.ns('PurchaseForm');
/**
 * @author
 * @createtime
 * @class StudentForm
 * @extends Ext.Window
 * @description StudentForm表单
 */
PurchaseForm = Ext.extend(Ext.Window, {
    formPanel: null,
    // 构造函数
    constructor: function (_cfg) {
        // 必须先初始化组件
        this.initUIComponents(_cfg);
        PurchaseForm.superclass.constructor.call(
            this,
            {
                id: 'PurchaseFormWin',
                width: 400,
                height: 400,
                layout: 'fit',
                autoScroll: true,
                resizable: false,
                draggable: true,
                closable: true,
                closeAction: 'close',
                modal: true,
                title: '<span class="commoncss">' + _cfg.title + '</span>',
                iconCls: 'page_addIcon',
                collapsible: false,
                titleCollapse: true,
                maximizable: false,
                buttonAlign: 'right',
                border: false,
                animateTarget: Ext.getBody(),
                constrain: true,
                items: formPanel,
                listeners: {
                    'beforeshow': function (comp) {
                        if (_cfg.id != null && _cfg.id != '' && _cfg.id != 'undefined') {
                            formPanel.load({
                                url: _ctxpath + '/api/purchase/get',
                                method: 'GET',
                                params: {
                                    purchaseId: _cfg.id
                                },
                                success: function (form, action) {
                                    var res = action.result;
                                    Ext.getCmp('purchaseNumber').setValue(res.data.purchaseNumber);
                                    Ext.getCmp('total').setValue(res.data.total);
                                    Ext.getCmp('payable').setValue(res.data.payable);
                                    Ext.getCmp('actual').setValue(res.data.actual);
                                    Ext.getCmp('cbx_supplierId').setValue(res.data.supplier.supplierId);
                                    Ext.getCmp('cbx_supplierId').setRawValue(res.data.supplier.supplierName);
                                    Ext.getCmp('comment').setValue(res.data.comment);
                                },
                                failure: function (form, action) {
                                    switch (action.failureType) {
                                        case Ext.form.Action.CLIENT_INVALID:
                                            Ext.Msg.show({
                                                title: 'Failure',
                                                msg: 'Form fields may not be submitted with invalid values',
                                                icon: Ext.MessageBox.ERROR,
                                                buttons: Ext.MessageBox.OK
                                            });
                                            break;
                                        case Ext.form.Action.CONNECT_FAILURE:
                                            Ext.Msg.show({
                                                title: 'Failure',
                                                msg: 'Ajax communication failed',
                                                icon: Ext.MessageBox.ERROR,
                                                buttons: Ext.MessageBox.OK
                                            });
                                            break;
                                        case Ext.form.Action.SERVER_INVALID:
                                            Ext.Msg.show({
                                                title: 'Failure',
                                                msg: action.result.msg,
                                                icon: Ext.MessageBox.ERROR,
                                                buttons: Ext.MessageBox.OK
                                            });
                                    }
                                }
                            });
                        }
                    }
                },
                buttons: [
                    {
                        text: '保存',
                        iconCls: 'acceptIcon',
                        handler: function () {
                            var form = formPanel.getForm();
                            if (form.isValid()) {
                                form.submit({
                                    url: _ctxpath + '/purchase/save.do',
                                    success: function (form, action) {
                                        var result = action.result;
                                        Ext.Msg.show({
                                            title: '提示信息',
                                            msg: result.msg,
                                            icon: Ext.MessageBox.INFO,
                                            buttons: Ext.MessageBox.OK
                                        });
                                        if (result.success) {
                                            Ext.getCmp('PurchaseFormWin').close();
                                            if (_cfg.callback != null) {
                                                _cfg.callback.call(this);
                                            }
                                        }
                                    },
                                    failure: function (form, action) {
                                        switch (action.failureType) {
                                            case Ext.form.Action.CLIENT_INVALID:
                                                Ext.Msg.show({
                                                    title: 'Failure',
                                                    msg: 'Form fields may not be submitted with invalid values',
                                                    icon: Ext.MessageBox.ERROR,
                                                    buttons: Ext.MessageBox.OK
                                                });
                                                break;
                                            case Ext.form.Action.CONNECT_FAILURE:
                                                Ext.Msg.show({
                                                    title: 'Failure',
                                                    msg: 'Ajax communication failed',
                                                    icon: Ext.MessageBox.ERROR,
                                                    buttons: Ext.MessageBox.OK
                                                });
                                                break;
                                            case Ext.form.Action.SERVER_INVALID:
                                                Ext.Msg.show({
                                                    title: 'Failure',
                                                    msg: action.result.msg,
                                                    icon: Ext.MessageBox.ERROR,
                                                    buttons: Ext.MessageBox.OK
                                                });
                                        }
                                    }
                                });
                            }
                        }
                    },
                    {
                        text: '重置',
                        id: 'btnReset',
                        iconCls: 'tbar_synchronizeIcon',
                        handler: function () {
                            formPanel.getForm().reset();
                        }
                    },
                    {
                        text: '关闭',
                        iconCls: 'deleteIcon',
                        handler: function () {
                            Ext.getCmp('PurchaseFormWin').close();
                        }
                    }]
            });
    },
    // end of the constructor
    // 初始化组件
    initUIComponents: function (obj) {

        formPanel = new Ext.form.FormPanel({
            id: 'PurchaseFormPanel',
            width: 450,
            layout: "form",
            labelAlign: 'right',
            padding: '3 0 0 0',
            border: false,
            labelWidth: 80,
            items: [
                {
                    xtype: 'hidden',
                    id: 'purchaseId',
                    name: 'purchaseId',
                    value: obj.id
                },
                {
                    xtype: 'textfield',
                    id: 'purchaseNumber',
                    name: 'purchaseNumber',
                    fieldLabel: '采购单编号',
                    allowBlank: false
                },
                {
                    xtype: 'numberfield',
                    id: 'total',
                    name: 'total',
                    fieldLabel: '总金额',
                    allowBlank: false
                },
                {
                    xtype: 'numberfield',
                    id: 'payable',
                    name: 'payable',
                    fieldLabel: '应付金额',
                    allowBlank: false
                },
                {
                    xtype: 'numberfield',
                    id: 'actual',
                    name: 'actual',
                    fieldLabel: '实付金额',
                    allowBlank: false
                },

                {
                    xtype: 'textfield',
                    id: 'comment',
                    name: 'comment',
                    fieldLabel: '备注',
                    allowBlank: true
                }]
        });
    }

// end of the initUIComponents
});