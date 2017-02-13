.class public Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;
.super Lcom/mediatek/calloption/SimSelectionCallOptionHandler;
.source "PhoneSimSelectionCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneSimSelectionCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "PhoneSimSelectionCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method


# virtual methods
.method protected showAssociateMissingDialog(Lcom/mediatek/calloption/Request;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 10
    .param p1, "request"    # Lcom/mediatek/calloption/Request;
    .param p2, "associateSimInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "associateSimMissingArgs"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    .param p5, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p7, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 74
    .local v4, "resources":Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 75
    .local v1, "associateSimName":Ljava/lang/String;
    :goto_0
    iget-object v6, p4, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->mViaSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    if-eqz v6, :cond_2

    iget-object v6, p4, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->mViaSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v5, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 78
    .local v5, "viaSimName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0025

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;->newDialogBuilderWithTheme(Landroid/content/Context;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 82
    .local v2, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v2, p3}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    invoke-virtual {v6, v7, p5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 83
    iget v6, p4, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->type:I

    if-nez v6, :cond_3

    .line 84
    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, p5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 89
    :cond_0
    :goto_2
    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 90
    iget-object v6, p0, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;->mDialog:Landroid/app/Dialog;

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 91
    iget-object v6, p0, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;->mDialog:Landroid/app/Dialog;

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 92
    iget-object v6, p0, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 93
    return-void

    .line 74
    .end local v1    # "associateSimName":Ljava/lang/String;
    .end local v2    # "builder":Lmiui/app/AlertDialog$Builder;
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "viaSimName":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 75
    .restart local v1    # "associateSimName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b02eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 85
    .restart local v2    # "builder":Lmiui/app/AlertDialog$Builder;
    .restart local v3    # "message":Ljava/lang/String;
    .restart local v5    # "viaSimName":Ljava/lang/String;
    :cond_3
    iget v6, p4, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 86
    const v6, 0x7f0b0026

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, p5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method protected showReasonAskDialog(Lcom/mediatek/calloption/Request;JZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 6
    .param p1, "request"    # Lcom/mediatek/calloption/Request;
    .param p2, "suggestedSim"    # J
    .param p4, "addInternet"    # Z
    .param p5, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p7, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 58
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

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v4

    invoke-direct {v3, v2, p2, p3, v4}, Lcom/mediatek/phone/calloption/PhoneSimPickerAdapter;-><init>(Landroid/content/Context;JZ)V

    const/4 v5, 0x0

    move-object v2, p5

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/mediatek/calloption/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/mediatek/calloption/SimPickerAdapter;ZZ)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 62
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p7}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneSimSelectionCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 65
    return-void
.end method
