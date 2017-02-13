.class public Lcom/android/phone/HfaActivity;
.super Landroid/app/Activity;
.source "HfaActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mHfaLogic:Lcom/android/phone/HfaLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/phone/HfaActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HfaActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HfaActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/HfaActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/HfaActivity;->onHfaSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HfaActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/HfaActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/phone/HfaActivity;->onHfaError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/HfaActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/HfaActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/HfaActivity;->onUserSkip()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/HfaActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/HfaActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/HfaActivity;->startProvisioning()V

    return-void
.end method

.method private buildAndShowDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0308

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0309

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b030c

    new-instance v2, Lcom/android/phone/HfaActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/HfaActivity$2;-><init>(Lcom/android/phone/HfaActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HfaActivity;->mDialog:Landroid/app/AlertDialog;

    .line 101
    iget-object v0, p0, Lcom/android/phone/HfaActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/phone/HfaActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 104
    sget-object v0, Lcom/android/phone/HfaActivity;->TAG:Ljava/lang/String;

    const-string v1, "showing dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/phone/HfaActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 106
    return-void
.end method

.method private onHfaError(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/phone/HfaActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 111
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b030c

    new-instance v3, Lcom/android/phone/HfaActivity$4;

    invoke-direct {v3, p0}, Lcom/android/phone/HfaActivity$4;-><init>(Lcom/android/phone/HfaActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0318

    new-instance v3, Lcom/android/phone/HfaActivity$3;

    invoke-direct {v3, p0}, Lcom/android/phone/HfaActivity$3;-><init>(Lcom/android/phone/HfaActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 131
    .local v0, "errorDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    return-void
.end method

.method private onHfaSuccess()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/phone/HfaActivity;->finish()V

    .line 136
    return-void
.end method

.method private onUserSkip()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/phone/HfaActivity;->finish()V

    .line 140
    return-void
.end method

.method private startProvisioning()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/HfaActivity;->buildAndShowDialog()V

    .line 80
    iget-object v0, p0, Lcom/android/phone/HfaActivity;->mHfaLogic:Lcom/android/phone/HfaLogic;

    invoke-virtual {v0}, Lcom/android/phone/HfaLogic;->start()V

    .line 81
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget-object v1, Lcom/android/phone/HfaActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/HfaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "otasp_result_code_pending_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 51
    .local v0, "otaResponseIntent":Landroid/app/PendingIntent;
    new-instance v1, Lcom/android/phone/HfaLogic;

    invoke-virtual {p0}, Lcom/android/phone/HfaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/phone/HfaActivity$1;

    invoke-direct {v3, p0}, Lcom/android/phone/HfaActivity$1;-><init>(Lcom/android/phone/HfaActivity;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/android/phone/HfaLogic;-><init>(Landroid/content/Context;Lcom/android/phone/HfaLogic$HfaLogicCallback;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/android/phone/HfaActivity;->mHfaLogic:Lcom/android/phone/HfaLogic;

    .line 63
    invoke-direct {p0}, Lcom/android/phone/HfaActivity;->startProvisioning()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 70
    sget-object v0, Lcom/android/phone/HfaActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/phone/HfaActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HfaActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/phone/HfaActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HfaActivity;->mDialog:Landroid/app/AlertDialog;

    .line 76
    :cond_0
    return-void
.end method
