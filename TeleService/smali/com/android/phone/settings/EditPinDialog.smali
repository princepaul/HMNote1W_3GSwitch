.class public Lcom/android/phone/settings/EditPinDialog;
.super Ljava/lang/Object;
.source "EditPinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/EditPinDialog$3;,
        Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;,
        Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;,
        Lcom/android/phone/settings/EditPinDialog$Mode;,
        Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;
    }
.end annotation


# static fields
.field private static final EVENT_ERROR:I = 0x1

.field private static final EVENT_FDN_DONE:I = 0x3

.field private static final EVENT_ICC_LOCK_DONE:I = 0x2

.field private static final EVENT_PIN1_DONE:I = 0x4

.field private static final EVENT_PIN2_DONE:I = 0x5

.field private static final EVENT_PUK1_DONE:I = 0x6

.field private static final EVENT_PUK2_DONE:I = 0x7

.field private static final EVENT_START:I = 0x0

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditTextConfirmNewPin:Landroid/widget/EditText;

.field private mEditTextNewPin:Landroid/widget/EditText;

.field private mEditTextOldPinPuk:Landroid/widget/EditText;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHotSwapReceiver:Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

.field private mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mTextViewPrompt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/settings/EditPinDialog$Mode;Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/android/phone/settings/EditPinDialog$Mode;
    .param p3, "listener"    # Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;
    .param p4, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;-><init>(Lcom/android/phone/settings/EditPinDialog;Lcom/android/phone/settings/EditPinDialog$1;)V

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mHotSwapReceiver:Lcom/android/phone/settings/EditPinDialog$HotSwapBroadcastReceiver;

    .line 425
    new-instance v1, Lcom/android/phone/settings/EditPinDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/EditPinDialog$2;-><init>(Lcom/android/phone/settings/EditPinDialog;)V

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    .line 95
    iput-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    .line 98
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/EditPinDialog$1;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditPinDialog$1;-><init>(Lcom/android/phone/settings/EditPinDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    .line 109
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 111
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040017

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 114
    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    .line 117
    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    .line 118
    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    .line 120
    iput-object p4, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 121
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 123
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 125
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 128
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 129
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 131
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    new-instance v1, Lmiui/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 138
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1, v3}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 141
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 143
    invoke-static {}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->updateIccCardStatus()V

    .line 144
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EditPinDialog;)Lmiui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/EditPinDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/settings/EditPinDialog;->process()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/settings/EditPinDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/EditPinDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/EditPinDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditPinDialog;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditPinDialog;->showToast(I)V

    return-void
.end method

.method private dismiss(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;->OnDialogClose(Lcom/android/phone/settings/EditPinDialog;Z)V

    .line 533
    :cond_2
    return-void
.end method

.method private process()V
    .locals 11

    .prologue
    const v10, 0x7f0b04e5

    const v9, 0x7f0b04f0

    const v8, 0x7f0b04e6

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 338
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "pinpuk":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "newPin":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "confirmNewPin":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 343
    .local v1, "msg":Landroid/os/Message;
    sget-object v6, Lcom/android/phone/settings/EditPinDialog$3;->$SwitchMap$com$android$phone$settings$EditPinDialog$Mode:[I

    iget-object v7, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    invoke-virtual {v7}, Lcom/android/phone/settings/EditPinDialog$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 345
    :pswitch_0
    invoke-static {v3, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 346
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 349
    :cond_0
    const/4 v6, 0x2

    iput v6, v1, Landroid/os/Message;->what:I

    .line 350
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v7, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    invoke-interface {v6, v4, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 354
    :pswitch_1
    invoke-static {v3, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 355
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 358
    :cond_2
    const/4 v6, 0x3

    iput v6, v1, Landroid/os/Message;->what:I

    .line 359
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v7, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    invoke-interface {v6, v4, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    .line 363
    :pswitch_2
    invoke-static {v3, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 364
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 366
    :cond_4
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 367
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 369
    :cond_5
    invoke-static {v2, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 370
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 373
    :cond_6
    const/4 v4, 0x4

    iput v4, v1, Landroid/os/Message;->what:I

    .line 374
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 378
    :pswitch_3
    invoke-static {v3, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 379
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 381
    :cond_7
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 382
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0b04ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 384
    :cond_8
    invoke-static {v2, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 385
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 388
    :cond_9
    const/4 v4, 0x5

    iput v4, v1, Landroid/os/Message;->what:I

    .line 389
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 393
    :pswitch_4
    invoke-static {v3, v4}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 394
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0b04e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 395
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 396
    :cond_a
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 397
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 399
    :cond_b
    invoke-static {v2, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 400
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 403
    :cond_c
    const/4 v4, 0x6

    iput v4, v1, Landroid/os/Message;->what:I

    .line 404
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 408
    :pswitch_5
    invoke-static {v3, v4}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_d

    .line 409
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0b04f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 410
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 411
    :cond_d
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 412
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0b04ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 414
    :cond_e
    invoke-static {v2, v5}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_f

    .line 415
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 418
    :cond_f
    const/4 v4, 0x7

    iput v4, v1, Landroid/os/Message;->what:I

    .line 419
    iget-object v4, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    return-void
.end method

.method private updateDialog()Z
    .locals 15

    .prologue
    .line 156
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN1:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v10

    invoke-static {v10}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isPin1Locked(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 158
    const/4 v10, 0x0

    .line 296
    :goto_0
    return v10

    .line 159
    :cond_1
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN2:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v10

    invoke-static {v10}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isPin2Locked(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 160
    sget-object v10, Lcom/android/phone/settings/EditPinDialog$Mode;->PUK2:Lcom/android/phone/settings/EditPinDialog$Mode;

    iput-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    .line 175
    :cond_2
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN1:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PUK1:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_10

    .line 176
    :cond_3
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v10}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    const v9, 0x7f0b02a7

    .line 179
    .local v9, "titleId":I
    :goto_1
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN1:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_c

    .line 181
    :cond_4
    const/4 v3, 0x0

    .line 182
    .local v3, "pin1RetryCount":I
    if-lez v3, :cond_b

    .line 183
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0b04f7

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "prompt":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    :cond_5
    const/4 v10, 0x1

    if-ne v3, v10, :cond_6

    .line 188
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0298

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    :cond_6
    :goto_2
    const v2, 0x7f0b04e1

    .line 194
    .local v2, "oldPinPukHitId":I
    const v1, 0x7f0b04e2

    .line 195
    .local v1, "newPinHitId":I
    const v0, 0x7f0b04e3

    .line 255
    .end local v3    # "pin1RetryCount":I
    .local v0, "confirmNewPinHitId":I
    :goto_3
    sget-object v10, Lcom/android/phone/settings/EditPinDialog$3;->$SwitchMap$com$android$phone$settings$EditPinDialog$Mode:[I

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    invoke-virtual {v11}, Lcom/android/phone/settings/EditPinDialog$Mode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 271
    const v5, 0x7f0b02bd

    .line 274
    .local v5, "progressId":I
    :goto_4
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_1c

    .line 275
    :cond_7
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 276
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 282
    :goto_5
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 283
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 284
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    :goto_6
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 290
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 292
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 294
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 296
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 161
    .end local v0    # "confirmNewPinHitId":I
    .end local v1    # "newPinHitId":I
    .end local v2    # "oldPinPukHitId":I
    .end local v5    # "progressId":I
    .end local v6    # "prompt":Ljava/lang/String;
    .end local v9    # "titleId":I
    :cond_8
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v10

    invoke-static {v10}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isPin2Locked(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 162
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x1010355

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0b0273

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0b04f4

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 166
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 176
    :cond_9
    const v9, 0x7f0b02a8

    goto/16 :goto_1

    :cond_a
    const v9, 0x7f0b029f

    goto/16 :goto_1

    .line 191
    .restart local v3    # "pin1RetryCount":I
    .restart local v9    # "titleId":I
    :cond_b
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6    # "prompt":Ljava/lang/String;
    goto/16 :goto_2

    .line 198
    .end local v3    # "pin1RetryCount":I
    .end local v6    # "prompt":Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    .line 199
    .local v7, "puk1RetryCount":I
    if-lez v7, :cond_f

    .line 200
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0b04f7

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .restart local v6    # "prompt":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    :cond_d
    const/4 v10, 0x1

    if-ne v7, v10, :cond_e

    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0299

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 210
    :cond_e
    :goto_7
    const v2, 0x7f0b0297

    .line 211
    .restart local v2    # "oldPinPukHitId":I
    const v1, 0x7f0b04e2

    .line 212
    .restart local v1    # "newPinHitId":I
    const v0, 0x7f0b04e3

    .line 213
    .restart local v0    # "confirmNewPinHitId":I
    goto/16 :goto_3

    .line 208
    .end local v0    # "confirmNewPinHitId":I
    .end local v1    # "newPinHitId":I
    .end local v2    # "oldPinPukHitId":I
    .end local v6    # "prompt":Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6    # "prompt":Ljava/lang/String;
    goto :goto_7

    .line 214
    .end local v6    # "prompt":Ljava/lang/String;
    .end local v7    # "puk1RetryCount":I
    .end local v9    # "titleId":I
    :cond_10
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN2:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PUK2:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_1b

    .line 215
    :cond_11
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_15

    const v9, 0x7f0b0273

    .line 216
    .restart local v9    # "titleId":I
    :goto_8
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN2:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-eq v10, v11, :cond_12

    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v10, v11, :cond_17

    .line 218
    :cond_12
    const/4 v4, 0x0

    .line 219
    .local v4, "pin2RetryCount":I
    if-lez v4, :cond_16

    .line 220
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0b04f7

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 221
    .restart local v6    # "prompt":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 224
    :cond_13
    const/4 v10, 0x1

    if-ne v4, v10, :cond_14

    .line 225
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0b04f5

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    :cond_14
    :goto_9
    const v2, 0x7f0b04ea

    .line 231
    .restart local v2    # "oldPinPukHitId":I
    const v1, 0x7f0b04eb

    .line 232
    .restart local v1    # "newPinHitId":I
    const v0, 0x7f0b04ec

    .line 233
    .restart local v0    # "confirmNewPinHitId":I
    goto/16 :goto_3

    .line 215
    .end local v0    # "confirmNewPinHitId":I
    .end local v1    # "newPinHitId":I
    .end local v2    # "oldPinPukHitId":I
    .end local v4    # "pin2RetryCount":I
    .end local v6    # "prompt":Ljava/lang/String;
    .end local v9    # "titleId":I
    :cond_15
    const v9, 0x7f0b027b

    goto :goto_8

    .line 228
    .restart local v4    # "pin2RetryCount":I
    .restart local v9    # "titleId":I
    :cond_16
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6    # "prompt":Ljava/lang/String;
    goto :goto_9

    .line 235
    .end local v4    # "pin2RetryCount":I
    .end local v6    # "prompt":Ljava/lang/String;
    :cond_17
    const/4 v8, 0x0

    .line 236
    .local v8, "puk2RetryCount":I
    if-lez v8, :cond_1a

    .line 237
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0b04f7

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .restart local v6    # "prompt":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 239
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 241
    :cond_18
    const/4 v10, 0x1

    if-ne v8, v10, :cond_19

    .line 242
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0299

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 247
    :cond_19
    :goto_a
    const v2, 0x7f0b04f6

    .line 248
    .restart local v2    # "oldPinPukHitId":I
    const v1, 0x7f0b04eb

    .line 249
    .restart local v1    # "newPinHitId":I
    const v0, 0x7f0b04ec

    .line 250
    .restart local v0    # "confirmNewPinHitId":I
    goto/16 :goto_3

    .line 245
    .end local v0    # "confirmNewPinHitId":I
    .end local v1    # "newPinHitId":I
    .end local v2    # "oldPinPukHitId":I
    .end local v6    # "prompt":Ljava/lang/String;
    :cond_1a
    iget-object v6, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6    # "prompt":Ljava/lang/String;
    goto :goto_a

    .line 252
    .end local v6    # "prompt":Ljava/lang/String;
    .end local v8    # "puk2RetryCount":I
    .end local v9    # "titleId":I
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 257
    .restart local v0    # "confirmNewPinHitId":I
    .restart local v1    # "newPinHitId":I
    .restart local v2    # "oldPinPukHitId":I
    .restart local v6    # "prompt":Ljava/lang/String;
    .restart local v9    # "titleId":I
    :pswitch_0
    const v5, 0x7f0b02b9

    .line 258
    .restart local v5    # "progressId":I
    goto/16 :goto_4

    .line 260
    .end local v5    # "progressId":I
    :pswitch_1
    const v5, 0x7f0b02ba

    .line 261
    .restart local v5    # "progressId":I
    goto/16 :goto_4

    .line 263
    .end local v5    # "progressId":I
    :pswitch_2
    const v5, 0x7f0b02bb

    .line 264
    .restart local v5    # "progressId":I
    goto/16 :goto_4

    .line 267
    .end local v5    # "progressId":I
    :pswitch_3
    const v5, 0x7f0b02bc

    .line 268
    .restart local v5    # "progressId":I
    goto/16 :goto_4

    .line 278
    :cond_1c
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 279
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_5

    .line 287
    :cond_1d
    iget-object v10, p0, Lcom/android/phone/settings/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "pin"    # Ljava/lang/String;
    .param p1, "isPUK"    # Z

    .prologue
    const/16 v1, 0x8

    .line 323
    if-eqz p1, :cond_1

    move v0, v1

    .line 326
    .local v0, "pinMinimum":I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 327
    :cond_0
    const/4 v1, 0x0

    .line 329
    :goto_1
    return v1

    .line 323
    .end local v0    # "pinMinimum":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 329
    .restart local v0    # "pinMinimum":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 550
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 551
    const/4 v0, 0x1

    .line 552
    .local v0, "enablePositiveButton":Z
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 555
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 558
    const/4 v0, 0x0

    .line 560
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 563
    const/4 v0, 0x0

    .line 566
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    .end local v0    # "enablePositiveButton":Z
    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 542
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V

    .line 537
    return-void
.end method

.method public getMode()Lcom/android/phone/settings/EditPinDialog$Mode;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 693
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 694
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPinDialog;->dismiss()V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 546
    return-void
.end method

.method public registerHotSwapReceiver(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    return-void
.end method

.method public setMode(Lcom/android/phone/settings/EditPinDialog$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/phone/settings/EditPinDialog$Mode;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog;->mMode:Lcom/android/phone/settings/EditPinDialog$Mode;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isInitialized(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 302
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->waitForInitialization(I)V

    .line 303
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/EditPinDialog;->updateDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditPinDialog;->afterTextChanged(Landroid/text/Editable;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPinDialog;->dismiss()V

    goto :goto_0
.end method

.method public unregisterHotSwapReceiver(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 577
    return-void
.end method
