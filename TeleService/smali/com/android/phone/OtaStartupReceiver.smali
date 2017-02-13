.class public Lcom/android/phone/OtaStartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtaStartupReceiver.java"


# static fields
.field private static final DBG:Z = true

.field private static final MIN_READY:I = 0xa

.field private static final SERVICE_STATE_CHANGED:I = 0xb

.field private static final TAG:Ljava/lang/String; = "OtaStartupReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOtaspMode:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    .line 58
    new-instance v0, Lcom/android/phone/OtaStartupReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$1;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 67
    new-instance v0, Lcom/android/phone/OtaStartupReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$2;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OtaStartupReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/OtaStartupReceiver;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/OtaStartupReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/OtaStartupReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/OtaStartupReceiver;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/OtaStartupReceiver;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private shouldPostpone(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 167
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 169
    .local v2, "provisioned":Z
    :goto_0
    const-string v7, "ro.setupwizard.mode"

    const-string v8, "REQUIRED"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "mode":Ljava/lang/String;
    const-string v7, "REQUIRED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "OPTIONAL"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v4, v5

    .line 172
    .local v4, "runningSetupWizard":Z
    :goto_1
    const-string v7, "OtaStartupReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolvInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", provisioned = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", runningSetupWizard = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    return v5

    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "provisioned":Z
    .end local v4    # "runningSetupWizard":Z
    :cond_1
    move v2, v6

    .line 167
    goto :goto_0

    .restart local v1    # "mode":Ljava/lang/String;
    .restart local v2    # "provisioned":Z
    :cond_2
    move v4, v6

    .line 170
    goto :goto_1

    .restart local v4    # "runningSetupWizard":Z
    :cond_3
    move v5, v6

    .line 175
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    .line 105
    const-string v3, "OtaStartupReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: intent action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mOtaspMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstanceIfPrimary()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 110
    .local v1, "globals":Lcom/android/phone/PhoneGlobals;
    if-nez v1, :cond_0

    .line 111
    const-string v3, "OtaStartupReceiver"

    const-string v4, "Not primary user, nothing to do."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    const-string v3, "OtaStartupReceiver"

    const-string v4, "OTASP not supported, nothing to do."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    if-nez v3, :cond_2

    .line 121
    const-string v3, "OtaStartupReceiver"

    const-string v4, "Register our PhoneStateListener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x200

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 124
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    .line 129
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/OtaStartupReceiver;->shouldPostpone(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    const-string v3, "OtaStartupReceiver"

    const-string v4, "Postponing OTASP until wizard runs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_2
    const-string v3, "OtaStartupReceiver"

    const-string v4, "PhoneStateListener already registered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 136
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 137
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    const-string v3, "OtaStartupReceiver"

    const-string v4, "Network is not ready. Registering to receive notification."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_4
    const-string v3, "OtaStartupReceiver"

    const-string v4, "call OtaUtils.maybeDoOtaCall"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-static {v3, v4, v5}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_0
.end method
