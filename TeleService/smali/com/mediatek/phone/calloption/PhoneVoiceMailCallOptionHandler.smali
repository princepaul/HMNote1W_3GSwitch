.class public Lcom/mediatek/phone/calloption/PhoneVoiceMailCallOptionHandler;
.super Lcom/mediatek/calloption/VoiceMailCallOptionHandler;
.source "PhoneVoiceMailCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneVoiceMailCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/calloption/VoiceMailCallOptionHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "PhoneVoiceMailCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method protected showMissedingVoiceMailDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/calloption/Request;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/calloption/PhoneVoiceMailCallOptionHandler;->newDialogBuilderWithTheme(Landroid/content/Context;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f0b019a

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b019b

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b019c

    invoke-virtual {v1, v2, p2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/phone/calloption/PhoneVoiceMailCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 60
    iget-object v1, p0, Lcom/mediatek/phone/calloption/PhoneVoiceMailCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 61
    iget-object v1, p0, Lcom/mediatek/phone/calloption/PhoneVoiceMailCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 62
    iget-object v1, p0, Lcom/mediatek/phone/calloption/PhoneVoiceMailCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 63
    return-void
.end method
