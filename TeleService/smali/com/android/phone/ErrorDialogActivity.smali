.class public Lcom/android/phone/ErrorDialogActivity;
.super Lmiui/app/Activity;
.source "ErrorDialogActivity.java"


# static fields
.field public static final DROP_VOICECALL_NUMBER_EXTRA:Ljava/lang/String; = "drop_voicecall_number"

.field public static final DROP_VOICECALL_SLOT_EXTRA:Ljava/lang/String; = "drop_voicecall_slot"

.field public static final ERROR_MESSAGE_ID_EXTRA:Ljava/lang/String; = "error_message_id"

.field public static final SHOW_MISSING_VOICEMAIL_NO_DIALOG_EXTRA:Ljava/lang/String; = "show_missing_voicemail"

.field public static final SHOW_VT_DROP_VOICECALL_EXTRA:Ljava/lang/String; = "show_drop_voicecall"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mNumber:Ljava/lang/String;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ErrorDialogActivity;->mSlot:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ErrorDialogActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ErrorDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ErrorDialogActivity;
    .param p1, "x1"    # Landroid/content/DialogInterface;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/ErrorDialogActivity;->addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ErrorDialogActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ErrorDialogActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ErrorDialogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ErrorDialogActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/ErrorDialogActivity;->mSlot:I

    return v0
.end method

.method private addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/phone/settings/VoicemailSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/phone/ErrorDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    .line 144
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    .line 148
    return-void
.end method

.method private handlePowerOffCase(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "resId"    # I
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 199
    move-object v3, p2

    .line 200
    .local v3, "msg":Ljava/lang/CharSequence;
    const v5, 0x7f0b02de

    if-ne p1, v5, :cond_3

    .line 201
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v5, :cond_3

    .line 202
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 203
    .local v0, "geminiSlots":[I
    const/4 v1, 0x0

    .line 204
    .local v1, "hasInsertSim":Z
    const/4 v4, 0x0

    .line 205
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 206
    aget v5, v0, v2

    invoke-static {v5}, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->hasIccCard(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 207
    if-nez v4, :cond_0

    .line 208
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aget v6, v0, v2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 205
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget v6, v0, v2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 213
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 217
    :cond_2
    if-nez v1, :cond_4

    .line 218
    sget-object v5, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v6, "should not come here, for PhoneVideoCallOptionHandler has already handle this case."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "geminiSlots":[I
    .end local v1    # "hasInsertSim":Z
    .end local v2    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    :goto_2
    sget-object v5, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePowerOffCase()... msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-object v3

    .line 219
    .restart local v0    # "geminiSlots":[I
    .restart local v1    # "hasInsertSim":Z
    .restart local v2    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    if-eqz v4, :cond_3

    .line 220
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0115

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private showDropVoiceCallDialog(I)V
    .locals 7
    .param p1, "resid"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 167
    .local v4, "msg":Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/phone/ErrorDialogActivity$6;

    invoke-direct {v1, p0}, Lcom/android/phone/ErrorDialogActivity$6;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    .line 176
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/phone/ErrorDialogActivity$7;

    invoke-direct {v2, p0}, Lcom/android/phone/ErrorDialogActivity$7;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    .line 182
    .local v2, "clickNegativeListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/ErrorDialogActivity$8;

    invoke-direct {v0, p0}, Lcom/android/phone/ErrorDialogActivity$8;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    .line 188
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v5, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b018f

    invoke-virtual {v5, v6, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b018c

    invoke-virtual {v5, v6, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    .line 193
    .local v3, "errorDialog":Lmiui/app/AlertDialog;
    invoke-virtual {v3}, Lmiui/app/AlertDialog;->show()V

    .line 194
    return-void
.end method

.method private showGenericErrorDialog(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method private showGenericErrorDialog(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    sget-object v3, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showGenericErrorDialog()... msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Lcom/android/phone/ErrorDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ErrorDialogActivity$1;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    .line 87
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/ErrorDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ErrorDialogActivity$2;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    .line 94
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b018f

    invoke-virtual {v3, v4, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    .line 98
    .local v2, "errorDialog":Lmiui/app/AlertDialog;
    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    .line 99
    return-void
.end method

.method private showMissingVoicemailErrorDialog()V
    .locals 4

    .prologue
    .line 113
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b019a

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b019b

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b018f

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$5;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$5;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b019c

    new-instance v3, Lcom/android/phone/ErrorDialogActivity$4;

    invoke-direct {v3, p0}, Lcom/android/phone/ErrorDialogActivity$4;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/ErrorDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/ErrorDialogActivity$3;-><init>(Lcom/android/phone/ErrorDialogActivity;)V

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 131
    .local v0, "missingVoicemailDialog":Lmiui/app/AlertDialog;
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 43
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_drop_voicecall"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 47
    .local v1, "showDropVoiceCallDialog":Z
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "error_message_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "error":I
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "drop_voicecall_number"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ErrorDialogActivity;->mNumber:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "drop_voicecall_slot"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/ErrorDialogActivity;->mSlot:I

    .line 51
    if-ne v0, v5, :cond_0

    .line 52
    sget-object v3, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v4, "ErrorDialogActivity called with no error type extra for VT drop voical call."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    .line 55
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/ErrorDialogActivity;->showDropVoiceCallDialog(I)V

    .line 73
    .end local v0    # "error":I
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_missing_voicemail"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 63
    .local v2, "showVoicemailDialog":Z
    if-eqz v2, :cond_2

    .line 64
    invoke-direct {p0}, Lcom/android/phone/ErrorDialogActivity;->showMissingVoicemailErrorDialog()V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "error_message_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    .restart local v0    # "error":I
    if-ne v0, v5, :cond_3

    .line 68
    sget-object v3, Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v4, "ErrorDialogActivity called with no error type extra."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    .line 71
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/phone/ErrorDialogActivity;->showGenericErrorDialog(I)V

    goto :goto_0
.end method
