.class public Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;
.super Lcom/mediatek/calloption/InternetCallOptionHandler;
.source "PhoneInternetCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneInternetCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mediatek/calloption/InternetCallOptionHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "PhoneInternetCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method private newSipCallOptionHandlerIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "original"    # Landroid/content/Intent;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    .local v0, "selectPhoneIntent":Landroid/content/Intent;
    const-class v1, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    const-string v1, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    return-object v0
.end method


# virtual methods
.method protected doSipCallOptionHandle(Lcom/mediatek/calloption/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;->newSipCallOptionHandlerIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "selectPhoneIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSipCallOptionHandler(): calling startActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;->log(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method protected showIPDialToast(Lcom/mediatek/calloption/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    return-void
.end method

.method protected showSipDisableDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/calloption/Request;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;->newDialogBuilderWithTheme(Landroid/content/Context;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 85
    iget-object v1, p0, Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 86
    iget-object v1, p0, Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 87
    iget-object v1, p0, Lcom/mediatek/phone/calloption/PhoneInternetCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 88
    return-void
.end method
