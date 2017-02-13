.class public Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;
.super Lcom/mediatek/calloption/VideoCallOptionHandler;
.source "PhoneVideoCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneVideoCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mediatek/calloption/VideoCallOptionHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "PhoneVideoCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method


# virtual methods
.method protected show3GSIMSelectDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 7
    .param p1, "request"    # Lcom/mediatek/calloption/Request;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/mediatek/phone/calloption/PhoneSimPickerAdapter;

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/mediatek/phone/calloption/PhoneSimPickerAdapter;-><init>(Landroid/content/Context;JZ)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mediatek/calloption/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/mediatek/calloption/SimPickerAdapter;ZZ)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 88
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 91
    return-void
.end method

.method protected showOpen3GServiceDialog(Lcom/mediatek/calloption/Request;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 7
    .param p1, "request"    # Lcom/mediatek/calloption/Request;
    .param p2, "isInsertSim"    # Z
    .param p3, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const v6, 0x7f0b007c

    .line 57
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;->newDialogBuilderWithTheme(Landroid/content/Context;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    if-nez p2, :cond_1

    .line 59
    const-class v2, Lcom/mediatek/common/telephony/IServiceStateExt;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 61
    .local v1, "serviceStateExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    invoke-virtual {v0, v6}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b0116

    :goto_0
    invoke-virtual {v3, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 74
    .end local v1    # "serviceStateExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :goto_1
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 75
    iget-object v2, p0, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    iget-object v2, p0, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 77
    iget-object v2, p0, Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 78
    return-void

    .line 61
    .restart local v1    # "serviceStateExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_0
    const v2, 0x7f0b0113

    goto :goto_0

    .line 69
    .end local v1    # "serviceStateExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    invoke-virtual {v0, v6}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, p3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    invoke-virtual {v2, v3, p3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1
.end method
