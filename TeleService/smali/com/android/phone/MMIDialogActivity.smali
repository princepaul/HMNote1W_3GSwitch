.class public Lcom/android/phone/MMIDialogActivity;
.super Landroid/app/Activity;
.source "MMIDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mHandler:Landroid/os/Handler;

.field public mIntentFilter:Landroid/content/IntentFilter;

.field private mMMIDialog:Landroid/app/Dialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field mSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/phone/MMIDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 56
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 173
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getDefaultSlot()I

    move-result v0

    iput v0, p0, Lcom/android/phone/MMIDialogActivity;->mSlot:I

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 193
    new-instance v0, Lcom/android/phone/MMIDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MMIDialogActivity$2;-><init>(Lcom/android/phone/MMIDialogActivity;)V

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MMIDialogActivity;Lcom/android/internal/telephony/MmiCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MMIDialogActivity;
    .param p1, "x1"    # Lcom/android/internal/telephony/MmiCode;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/phone/MMIDialogActivity;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MMIDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MMIDialogActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->onMMICancel()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MMIDialogActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MMIDialogActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MMIDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MMIDialogActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    return-void
.end method

.method private dismissDialogsAndFinish()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->finish()V

    .line 171
    return-void
.end method

.method private initSlot()V
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "com.android.phone.extra.slot"

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getDefaultSlot()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MMIDialogActivity;->mSlot:I

    .line 179
    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", slotid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MMIDialogActivity;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private onMMICancel()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMMICancel()..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/MMIDialogActivity;->mSlot:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->cancelMmiCodeExt(Lcom/android/internal/telephony/Phone;I)Z

    .line 159
    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMMICancel: finishing InCallScreen..."

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    .line 161
    return-void
.end method

.method private onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    .locals 7
    .param p1, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 129
    .local v6, "phoneType":I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/phone/MMIDialogActivity;->mSlot:I

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->displayMMICompleteExt(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Lmiui/app/AlertDialog;I)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x1

    if-ne v6, v0, :cond_0

    .line 132
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    .line 133
    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "Got MMI_COMPLETE, finishing dialog activity..."

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    goto :goto_0
.end method

.method private showMMIDialog()V
    .locals 6

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v4, p0, Lcom/android/phone/MMIDialogActivity;->mSlot:I

    invoke-static {v3, v4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPendingMmiCodes(Lcom/android/internal/telephony/Phone;I)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    sget-object v3, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 111
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 112
    .local v2, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x35

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 113
    .local v1, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-static {p0, v2, v1, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    .line 117
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "mmiCode":Lcom/android/internal/telephony/MmiCode;
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->initSlot()V

    .line 62
    new-instance v0, Lcom/android/phone/MMIDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MMIDialogActivity$1;-><init>(Lcom/android/phone/MMIDialogActivity;)V

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/phone/PhoneGlobals;->MMI_COMPLETE_GEMINI:[I

    invoke-static {v0, v1}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForMmiComplete(Landroid/os/Handler;[I)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 89
    const v0, 0x7f0b02e3

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MMIDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sNoNeedStartUssdActivity:Z

    .line 98
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->showMMIDialog()V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MMIDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 188
    return-void
.end method
