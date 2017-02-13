.class public Lcom/android/phone/settings/EnableIccPinScreen;
.super Landroid/app/Activity;
.source "EnableIccPinScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"


# instance fields
.field private mClicked:Landroid/view/View$OnClickListener;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinField:Landroid/widget/EditText;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mStatusField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/android/phone/settings/EnableIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EnableIccPinScreen$1;-><init>(Lcom/android/phone/settings/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/android/phone/settings/EnableIccPinScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EnableIccPinScreen$3;-><init>(Lcom/android/phone/settings/EnableIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/EnableIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EnableIccPinScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EnableIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EnableIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EnableIccPinScreen;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EnableIccPinScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EnableIccPinScreen;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/EnableIccPinScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EnableIccPinScreen;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->enableIccPin()V

    return-void
.end method

.method private enableIccPin()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mEnable:Z

    invoke-direct {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->getPin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 109
    return-void
.end method

.method private getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 112
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b02aa

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/settings/EnableIccPinScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/EnableIccPinScreen$2;-><init>(Lcom/android/phone/settings/EnableIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    return-void

    .line 114
    :cond_1
    const v0, 0x7f0b02ab

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EnableIccPin] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    .line 81
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 83
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EnableIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    .line 87
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f04001b

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EnableIccPinScreen;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->setupView()V

    .line 72
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    iget-object v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mEnable:Z

    .line 75
    iget-boolean v1, p0, Lcom/android/phone/settings/EnableIccPinScreen;->mEnable:Z

    if-eqz v1, :cond_1

    const v0, 0x7f0b02a8

    .line 76
    .local v0, "id":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EnableIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    return-void

    .line 73
    .end local v0    # "id":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    :cond_1
    const v0, 0x7f0b02a7

    goto :goto_1
.end method
