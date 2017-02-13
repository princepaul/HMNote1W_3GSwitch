.class public Lcom/android/phone/settings/ChangeIccPinScreen;
.super Landroid/app/Activity;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_PIN_CHANGED:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NO_ERROR:I = 0x0

.field private static final PIN_INVALID_LENGTH:I = 0x2

.field private static final PIN_MISMATCH:I = 0x1


# instance fields
.field private mBadPinError:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mChangePin2:Z

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIccPUKPanel:Landroid/widget/LinearLayout;

.field private mMismatchError:Landroid/widget/TextView;

.field private mNewPin1:Landroid/widget/EditText;

.field private mNewPin2:Landroid/widget/EditText;

.field private mOldPin:Landroid/widget/EditText;

.field private mPUKAlert:Landroid/app/AlertDialog;

.field private mPUKCode:Landroid/widget/EditText;

.field private mPUKSubmit:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Lcom/android/phone/settings/ChangeIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/ChangeIccPinScreen$1;-><init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/android/phone/settings/ChangeIccPinScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/ChangeIccPinScreen$2;-><init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/ChangeIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/settings/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/settings/ChangeIccPinScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/settings/ChangeIccPinScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/ChangeIccPinScreen;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->reset()V

    return-void
.end method

.method private displayPUKAlert()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/settings/ChangeIccPinScreen$4;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/ChangeIccPinScreen$4;-><init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 237
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->showConfirmation()V

    .line 247
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/settings/ChangeIccPinScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/ChangeIccPinScreen$3;-><init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_3

    .line 258
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 259
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 261
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    .line 263
    sget-object v1, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    .line 264
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->displayPUKAlert()V

    .line 265
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 269
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->displayPUKAlert()V

    .line 273
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 274
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-boolean v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const-string v0, "[ChgPin2]"

    .line 306
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 305
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v0, "[ChgPin]"

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 148
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pin2"

    iget-boolean v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    .line 144
    return-void
.end method

.method private showConfirmation()V
    .locals 2

    .prologue
    .line 300
    iget-boolean v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0b04f2

    .line 301
    .local v0, "id":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 302
    return-void

    .line 300
    .end local v0    # "id":I
    :cond_0
    const v0, 0x7f0b02ad

    goto :goto_0
.end method

.method private validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "p1"    # Ljava/lang/String;
    .param p2, "p2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 153
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    const/4 v1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 163
    .local v0, "len1":I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 98
    invoke-direct {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->resolveIntent()V

    .line 100
    const v1, 0x7f04000c

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->setContentView(I)V

    .line 102
    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    .line 103
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 105
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    .line 108
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 110
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    .line 113
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 114
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    .line 120
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    .line 121
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 125
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    .line 126
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 127
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 128
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    .line 131
    iget-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    .line 135
    iget-boolean v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0b027b

    .line 136
    .local v0, "id":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/ChangeIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    sget-object v1, Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/settings/ChangeIccPinScreen;->mState:Lcom/android/phone/settings/ChangeIccPinScreen$EntryState;

    .line 139
    return-void

    .line 135
    .end local v0    # "id":I
    :cond_0
    const v0, 0x7f0b029f

    goto :goto_0
.end method
