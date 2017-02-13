.class public Lcom/android/phone/settings/EditFdnContactScreen;
.super Lmiui/app/Activity;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/EditFdnContactScreen$4;,
        Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;,
        Lcom/android/phone/settings/EditFdnContactScreen$Actions;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final INTENT_EXTRA_IS_ADD:Ljava/lang/String; = "is_add"

.field static final INTENT_EXTRA_NAME:Ljava/lang/String; = "name"

.field static final INTENT_EXTRA_NUMBER:Ljava/lang/String; = "number"

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiEditFdnContactScreen"


# instance fields
.field private mAddContact:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mDeleteButton:Landroid/widget/Button;

.field private mName:Ljava/lang/String;

.field private mNameField:Landroid/widget/EditText;

.field private mNumber:Ljava/lang/String;

.field private mNumberField:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPin2Field:Landroid/widget/EditText;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mSlotId:I

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mSlotId:I

    .line 307
    new-instance v0, Lcom/android/phone/settings/EditFdnContactScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EditFdnContactScreen$1;-><init>(Lcom/android/phone/settings/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 332
    new-instance v0, Lcom/android/phone/settings/EditFdnContactScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EditFdnContactScreen$2;-><init>(Lcom/android/phone/settings/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    .line 362
    new-instance v0, Lcom/android/phone/settings/EditFdnContactScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/EditFdnContactScreen$3;-><init>(Lcom/android/phone/settings/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 372
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;
    .param p1, "x1"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditFdnContactScreen;->performActions(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EditFdnContactScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mAddContact:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/settings/EditFdnContactScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->dismissProgress()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditFdnContactScreen;
    .param p1, "x1"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 271
    :cond_0
    return-void
.end method

.method private displayProgress(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V
    .locals 2
    .param p1, "action"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 249
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 252
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 254
    :cond_0
    sget-object v0, Lcom/android/phone/settings/EditFdnContactScreen$4;->$SwitchMap$com$android$phone$settings$EditFdnContactScreen$Actions:[I

    invoke-virtual {p1}, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 265
    return-void

    .line 256
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f0b028b

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f0b028e

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mProgressDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f0b0291

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getContentURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mSlotId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getFdnUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getNameFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPin2FromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V
    .locals 2
    .param p1, "action"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;
    .param p2, "success"    # Z
    .param p3, "invalidNumber"    # Z

    .prologue
    .line 284
    if-eqz p2, :cond_0

    .line 286
    sget-object v0, Lcom/android/phone/settings/EditFdnContactScreen$4;->$SwitchMap$com$android$phone$settings$EditFdnContactScreen$Actions:[I

    invoke-virtual {p1}, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 297
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->finish()V

    .line 305
    :goto_1
    return-void

    .line 288
    :pswitch_0
    const v0, 0x7f0b028c

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :pswitch_1
    const v0, 0x7f0b028f

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :pswitch_2
    const v0, 0x7f0b0292

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 300
    :cond_0
    if-eqz p3, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0294

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isValidNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v2, 0x1

    .line 192
    .local v2, "valid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 194
    .local v0, "c":C
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    const/4 v2, 0x0

    .line 199
    .end local v0    # "c":C
    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 192
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "c":C
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 405
    const-string v0, "MiuiEditFdnContactScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EditFdnContact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method private performActions(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V
    .locals 12
    .param p1, "action"    # Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/settings/EditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 204
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    .line 244
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/phone/settings/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 208
    invoke-direct {p0, p1, v1, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->handleResult(Lcom/android/phone/settings/EditFdnContactScreen$Actions;ZZ)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditFdnContactScreen;->displayProgress(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V

    .line 213
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 214
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/settings/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    .line 215
    .local v0, "queryHandler":Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v4, "bundle":Landroid/content/ContentValues;
    sget-object v5, Lcom/android/phone/settings/EditFdnContactScreen$4;->$SwitchMap$com$android$phone$settings$EditFdnContactScreen$Actions:[I

    invoke-virtual {p1}, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    const-string v5, "tag"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v5, "number"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v5, "pin2"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 224
    :pswitch_1
    const-string v5, "tag"

    iget-object v6, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v5, "number"

    iget-object v6, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v5, "pin2"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v5, "newTag"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v5, "newNumber"

    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    move-object v6, v2

    .line 229
    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :pswitch_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v11, "buf":Ljava/lang/StringBuilder;
    const-string v5, "tag=\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v5, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v5, "\' AND number=\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v5, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v5, "\' AND pin2=\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v5, "\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/settings/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/phone/settings/EditFdnContactScreen$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mSlotId:I

    .line 111
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    .line 112
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 113
    const-string v1, "is_add"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mAddContact:Z

    .line 114
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 123
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    .line 124
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    :cond_0
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    .line 128
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    :cond_1
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 135
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    :cond_2
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_3
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_4
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 158
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_8

    .line 164
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    :goto_2
    return-void

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_7
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 166
    :cond_8
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "statusMsg"    # Ljava/lang/CharSequence;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    .line 279
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 89
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->resolveIntent()V

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 96
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->setContentView(I)V

    .line 97
    invoke-direct {p0}, Lcom/android/phone/settings/EditFdnContactScreen;->setupView()V

    .line 99
    iget-boolean v0, p0, Lcom/android/phone/settings/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_0

    .line 100
    const v0, 0x7f0b028a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->setTitle(I)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const v0, 0x7f0b028d

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->setTitle(I)V

    goto :goto_0
.end method
