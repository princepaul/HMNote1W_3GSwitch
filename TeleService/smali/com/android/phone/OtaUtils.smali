.class public Lcom/android/phone/OtaUtils;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OtaUtils$CdmaOtaScreenState;,
        Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;,
        Lcom/android/phone/OtaUtils$CdmaOtaConfigData;,
        Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;,
        Lcom/android/phone/OtaUtils$OtaWidgetData;
    }
.end annotation


# static fields
.field public static final ACTION_DISPLAY_ACTIVATION_SCREEN:Ljava/lang/String; = "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

.field public static final ACTION_PERFORM_CDMA_PROVISIONING:Ljava/lang/String; = "com.android.phone.PERFORM_CDMA_PROVISIONING"

.field public static final ACTION_PERFORM_VOICELESS_CDMA_PROVISIONING:Ljava/lang/String; = "com.android.phone.PERFORM_VOICELESS_CDMA_PROVISIONING"

.field private static final DBG:Z = true

.field public static final EXTRA_OTASP_ERROR_CODE:Ljava/lang/String; = "otasp_error_code"

.field public static final EXTRA_OTASP_RESULT_CODE:Ljava/lang/String; = "otasp_result_code"

.field public static final EXTRA_OTASP_RESULT_CODE_PENDING_INTENT:Ljava/lang/String; = "otasp_result_code_pending_intent"

.field public static final EXTRA_OVERRIDE_INTERACTIVE_MODE:Ljava/lang/String; = "ota_override_interactive_mode"

.field public static final EXTRA_VOICELESS_PROVISIONING_OFFER_DONTSHOW:Ljava/lang/String; = "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

.field private static final LOG_TAG:Ljava/lang/String; = "OtaUtils"

.field public static final OTASP_FAILURE:I = 0x3

.field public static final OTASP_FAILURE_SPC_RETRIES:I = 0x4

.field private static final OTASP_NUMBER:Ljava/lang/String; = "*228"

.field private static final OTASP_NUMBER_NON_INTERACTIVE:Ljava/lang/String; = "*22899"

.field public static final OTASP_SUCCESS:I = 0x2

.field public static final OTASP_UNKNOWN:I = 0x0

.field public static final OTASP_USER_SKIPPED:I = 0x1

.field private static final OTA_CALL_LTE_RETRIES_MAX:I = 0x5

.field private static final OTA_CALL_LTE_RETRY_PERIOD:I = 0xbb8

.field public static final OTA_PLAY_SUCCESS_FAILURE_TONE_OFF:I = 0x0

.field public static final OTA_PLAY_SUCCESS_FAILURE_TONE_ON:I = 0x1

.field public static final OTA_SHOW_ACTIVATE_FAIL_COUNT_OFF:I = 0x0

.field public static final OTA_SHOW_ACTIVATE_FAIL_COUNT_THREE:I = 0x3

.field public static final OTA_SHOW_ACTIVATION_SCREEN_OFF:I = 0x0

.field public static final OTA_SHOW_ACTIVATION_SCREEN_ON:I = 0x1

.field public static final OTA_SHOW_LISTENING_SCREEN_OFF:I = 0x0

.field public static final OTA_SHOW_LISTENING_SCREEN_ON:I = 0x1

.field public static final RESULT_INTERACTIVE_OTASP_STARTED:I = 0x1

.field public static final RESULT_NONINTERACTIVE_OTASP_FAILED:I = 0x3

.field public static final RESULT_NONINTERACTIVE_OTASP_STARTED:I = 0x2

.field private static sIsWizardMode:Z

.field private static sOtaCallLteRetries:I


# instance fields
.field public final OTA_FAILURE_DIALOG_TIMEOUT:I

.field public final OTA_SPC_TIMEOUT:I

.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private final mBluetoothManager:Lcom/android/phone/BluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mInteractive:Z

.field private mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    .line 159
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/phone/BluetoothManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactive"    # Z
    .param p3, "bluetoothManager"    # Lcom/android/phone/BluetoothManager;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/phone/OtaUtils;->OTA_SPC_TIMEOUT:I

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/OtaUtils;->OTA_FAILURE_DIALOG_TIMEOUT:I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 216
    const-string v0, "OtaUtils constructor..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 218
    iput-object p1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    .line 219
    iput-boolean p2, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 220
    iput-object p3, p0, Lcom/android/phone/OtaUtils;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    .line 221
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/OtaUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/OtaUtils;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaSkipActivation()V

    return-void
.end method

.method private static getLteOnCdmaMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 1581
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1585
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1587
    :cond_0
    const-string v1, "telephony.lteOnCdmaDevice"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1590
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    goto :goto_0
.end method

.method private getOtaSpcDisplayTime()I
    .locals 7

    .prologue
    .line 1320
    const-string v5, "getOtaSpcDisplayTime()..."

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1321
    const/4 v4, 0x1

    .line 1322
    .local v4, "tmpSpcTime":I
    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v5, :cond_0

    .line 1323
    const-wide/16 v2, 0x0

    .line 1324
    .local v2, "tmpOtaSpcRunningTime":J
    const-wide/16 v0, 0x0

    .line 1325
    .local v0, "tmpOtaSpcLeftTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1326
    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-wide v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    sub-long v0, v2, v5

    .line 1328
    const-wide/32 v5, 0xea60

    cmp-long v5, v0, v5

    if-ltz v5, :cond_1

    .line 1329
    const/4 v4, 0x1

    .line 1334
    .end local v0    # "tmpOtaSpcLeftTime":J
    .end local v2    # "tmpOtaSpcRunningTime":J
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOtaSpcDisplayTime(), time for SPC error notice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1335
    return v4

    .line 1331
    .restart local v0    # "tmpOtaSpcLeftTime":J
    .restart local v2    # "tmpOtaSpcRunningTime":J
    :cond_1
    long-to-int v5, v0

    div-int/lit16 v5, v5, 0x3e8

    rsub-int/lit8 v4, v5, 0x3c

    goto :goto_0
.end method

.method private initOtaInCallScreen()V
    .locals 2

    .prologue
    .line 1342
    const-string v0, "initOtaInCallScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1350
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1397
    return-void
.end method

.method public static isOtaspCallIntent(Landroid/content/Intent;)Z
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOtaspCallIntent("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 449
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v6, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 451
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-nez p0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v5

    .line 454
    :cond_1
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 458
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 462
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 463
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOtaspCallIntent: not a CALL action: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' ==> not OTASP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_2
    iget-object v6, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v6, :cond_4

    .line 471
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "isOtaspCallIntent: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 479
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 486
    .local v3, "number":Ljava/lang/String;
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 487
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOtaSpNumber: ACTION_CALL to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ==> OTASP call!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 488
    const/4 v5, 0x1

    goto :goto_0

    .line 480
    .end local v3    # "number":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 483
    .local v2, "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    const-string v6, "isOtaspCallIntent: VoiceMailNumberMissingException => not OTASP"

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1594
    const-string v0, "OtaUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1598
    const-string v0, "OtaUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    return-void
.end method

.method public static maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "request"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 233
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 234
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 240
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 241
    const-string v7, "OtaUtils"

    const-string v8, "Don\'t run provisioning when in test harness"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    return v6

    .line 245
    :cond_0
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 247
    const-string v7, "maybeDoOtaCall: OTASP not supported on this device"

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v8

    if-nez v8, :cond_2

    .line 252
    const-string v6, "MIN is not ready. Registering to receive notification."

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 253
    const/4 v6, 0x0

    invoke-interface {v4, p1, p2, v6}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    move v6, v7

    .line 254
    goto :goto_0

    .line 256
    :cond_2
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 258
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 259
    sget v8, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    const/4 v9, 0x5

    if-ge v8, v9, :cond_3

    .line 260
    const-string v6, "maybeDoOtaCall: LTE state still unknown: retrying"

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 261
    const-wide/16 v8, 0xbb8

    invoke-virtual {p1, p2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    sget v6, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    move v6, v7

    .line 263
    goto :goto_0

    .line 265
    :cond_3
    const-string v7, "OtaUtils"

    const-string v8, "maybeDoOtaCall: LTE state still unknown: giving up"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_4
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v5

    .line 271
    .local v5, "phoneNeedsActivation":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phoneNeedsActivation is set to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f0a0000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 275
    .local v3, "otaShowActivationScreen":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "otaShowActivationScreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 279
    sget-boolean v8, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-eqz v8, :cond_6

    invoke-static {p0}, Lcom/android/phone/OtaUtils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v8

    if-nez v8, :cond_6

    .line 280
    if-eqz v5, :cond_5

    if-ne v3, v6, :cond_5

    .line 282
    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v7, v8, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 283
    sput-boolean v7, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    .line 285
    const-string v7, "OtaUtils"

    const-string v8, "==> Starting interactive CDMA provisioning..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startInteractiveOtasp(Landroid/content/Context;)V

    .line 288
    const-string v7, "maybeDoOtaCall: voice capable; activation started."

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_5
    const-string v7, "maybeDoOtaCall: voice capable; activation NOT started."

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :cond_6
    if-eqz v5, :cond_7

    .line 294
    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v7, v8, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 295
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.phone.PERFORM_VOICELESS_CDMA_PROVISIONING"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v2, "newIntent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 297
    const-string v8, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    const-string v7, "maybeDoOtaCall: non-interactive; activation intent sent."

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "No activity Handling PERFORM_VOICELESS_CDMA_PROVISIONING!"

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->loge(Ljava/lang/String;)V

    move v6, v7

    .line 302
    goto/16 :goto_0

    .line 306
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_7
    const-string v7, "maybeDoOtaCall: non-interactive, no need for OTASP."

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onClickOtaActivateButton()V
    .locals 1

    .prologue
    .line 1260
    const-string v0, "Call Activation Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1261
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaPerformActivation()V

    .line 1262
    return-void
.end method

.method private onClickOtaActivateNextButton()V
    .locals 2

    .prologue
    .line 1296
    const-string v0, "Dialog Next Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1300
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowHome()V

    .line 1302
    :cond_0
    return-void
.end method

.method private onClickOtaActivateSkipButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1265
    const-string v1, "Activation Skip Clicked!"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1267
    new-instance v0, Lcom/android/phone/OtaUtils$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaUtils$2;-><init>(Lcom/android/phone/OtaUtils;)V

    .line 1274
    .local v0, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b030a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b030b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/phone/OtaUtils$3;

    invoke-direct {v4, p0}, Lcom/android/phone/OtaUtils$3;-><init>(Lcom/android/phone/OtaUtils;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    .line 1292
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1293
    return-void
.end method

.method private onClickOtaEndButton()V
    .locals 1

    .prologue
    .line 1239
    const-string v0, "Activation End Call Button Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1249
    :cond_0
    return-void
.end method

.method private onClickOtaSpeakerButton()V
    .locals 2

    .prologue
    .line 1252
    const-string v1, "OTA Speaker button Clicked!"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1253
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1255
    .local v0, "isChecked":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1257
    .end local v0    # "isChecked":Z
    :cond_0
    return-void

    .line 1254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClickOtaTryAgainButton()V
    .locals 1

    .prologue
    .line 1232
    const-string v0, "Activation Try Again Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 1236
    :cond_0
    return-void
.end method

.method private otaPerformActivation()V
    .locals 4

    .prologue
    .line 689
    const-string v1, "otaPerformActivation()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 690
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_1

    .line 692
    const-string v1, "OtaUtils"

    const-string v2, "otaPerformActivation: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_0

    .line 698
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "tel"

    const-string v2, "*228"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 702
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 705
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowListeningScreen()V

    goto :goto_0
.end method

.method private static otaProvisionStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I

    .prologue
    .line 1550
    packed-switch p0, :pswitch_data_0

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1552
    :pswitch_0
    const-string v0, "SPL_UNLOCKED"

    goto :goto_0

    .line 1554
    :pswitch_1
    const-string v0, "SPC_RETRIES_EXCEEDED"

    goto :goto_0

    .line 1556
    :pswitch_2
    const-string v0, "A_KEY_EXCHANGED"

    goto :goto_0

    .line 1558
    :pswitch_3
    const-string v0, "SSD_UPDATED"

    goto :goto_0

    .line 1560
    :pswitch_4
    const-string v0, "NAM_DOWNLOADED"

    goto :goto_0

    .line 1562
    :pswitch_5
    const-string v0, "MDN_DOWNLOADED"

    goto :goto_0

    .line 1564
    :pswitch_6
    const-string v0, "IMSI_DOWNLOADED"

    goto :goto_0

    .line 1566
    :pswitch_7
    const-string v0, "PRL_DOWNLOADED"

    goto :goto_0

    .line 1568
    :pswitch_8
    const-string v0, "COMMITTED"

    goto :goto_0

    .line 1570
    :pswitch_9
    const-string v0, "OTAPA_STARTED"

    goto :goto_0

    .line 1572
    :pswitch_a
    const-string v0, "OTAPA_STOPPED"

    goto :goto_0

    .line 1574
    :pswitch_b
    const-string v0, "OTAPA_ABORTED"

    goto :goto_0

    .line 1550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private otaScreenInitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1068
    const-string v0, "otaScreenInitialize()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1070
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 1073
    const-string v0, "OtaUtils"

    const-string v1, "otaScreenInitialize: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0306

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1085
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private otaShowHome()V
    .locals 3

    .prologue
    .line 664
    const-string v1, "otaShowHome()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 668
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 672
    return-void
.end method

.method private otaShowInProgressScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 866
    const-string v1, "otaShowInProgressScreen()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 867
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_1

    .line 869
    const-string v1, "OtaUtils"

    const-string v2, "otaShowInProgressScreen: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 876
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-nez v1, :cond_2

    .line 877
    const-string v1, "OtaUtils"

    const-string v2, "otaShowInProgressScreen: UI widgets not set up yet!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 886
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 888
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0b0312

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 890
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 891
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 893
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 894
    .local v0, "speakerOn":Z
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private otaShowListeningScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 743
    const-string v1, "otaShowListeningScreen()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 744
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_0

    .line 746
    const-string v1, "OtaUtils"

    const-string v2, "otaShowListeningScreen: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 752
    const-string v1, "otaShowListeningScreen(): show listening screen"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 754
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 755
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0b0310

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 758
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 760
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 761
    .local v0, "speakerOn":Z
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 763
    .end local v0    # "speakerOn":Z
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto :goto_0

    .line 766
    :cond_2
    const-string v1, "otaShowListeningScreen(): show progress screen"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 767
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    goto :goto_0
.end method

.method private otaShowProgramFailure(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 905
    const-string v0, "otaShowProgramFailure()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 907
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaShowProgramFailure(): activationCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 913
    const-string v0, "otaShowProgramFailure(): show failure notice"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 914
    invoke-direct {p0, p1}, Lcom/android/phone/OtaUtils;->otaShowProgramFailureNotice(I)V

    .line 919
    :goto_0
    return-void

    .line 916
    :cond_0
    const-string v0, "otaShowProgramFailure(): show failure dialog"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 917
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowProgramFailureDialog()V

    goto :goto_0
.end method

.method private otaShowProgramFailureDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 952
    const-string v0, "otaShowProgramFailureDialog()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 955
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0b030f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 956
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0b0315

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 958
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 964
    return-void
.end method

.method private otaShowProgramFailureNotice(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 1034
    const-string v0, "otaShowProgramFailureNotice()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0313

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1039
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1042
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1044
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    .line 1047
    :cond_0
    return-void
.end method

.method private otaShowProgramSuccessDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 970
    const-string v0, "otaShowProgramSuccessDialog()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 973
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0b030e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 974
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0b0314

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 976
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 982
    return-void
.end method

.method private otaShowSpcErrorNotice(I)V
    .locals 6
    .param p1, "length"    # I

    .prologue
    .line 991
    const-string v3, "otaShowSpcErrorNotice()..."

    invoke-static {v3}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 992
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    .line 993
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 995
    new-instance v0, Lcom/android/phone/OtaUtils$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaUtils$1;-><init>(Lcom/android/phone/OtaUtils;)V

    .line 1000
    .local v0, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0316

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 1004
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x90

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1007
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1012
    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v1, v3

    .line 1013
    .local v1, "noticeTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "otaShowSpcErrorNotice(), remaining SPC noticeTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1016
    .end local v0    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v1    # "noticeTime":J
    :cond_0
    return-void
.end method

.method private otaSkipActivation()V
    .locals 1

    .prologue
    .line 676
    const-string v0, "otaSkipActivation()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 678
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    .line 681
    return-void
.end method

.method private readXmlSettings()V
    .locals 6

    .prologue
    .line 1165
    const-string v4, "readXmlSettings()..."

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1166
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget-boolean v4, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->configComplete:Z

    if-eqz v4, :cond_0

    .line 1194
    :goto_0
    return-void

    .line 1170
    :cond_0
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->configComplete:Z

    .line 1171
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0a0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1173
    .local v2, "tmpOtaShowActivationScreen":I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v2, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    .line 1174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaShowActivationScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1177
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1179
    .local v3, "tmpOtaShowListeningScreen":I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v3, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    .line 1180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaShowListeningScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1183
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1185
    .local v1, "tmpOtaShowActivateFailTimes":I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v1, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    .line 1186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaShowActivateFailTimes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1189
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1191
    .local v0, "tmpOtaPlaySuccessFailureTone":I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v0, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    .line 1192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaPlaySuccessFailureTone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendOtaspResult(I)V
    .locals 5
    .param p1, "resultCode"    # I

    .prologue
    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOtaspResult: resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 832
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 833
    .local v1, "extraStuff":Landroid/content/Intent;
    const-string v2, "otasp_result_code"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v2, :cond_0

    .line 839
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: no cdmaOtaScreenState object!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 843
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: null otaspResultCodePendingIntent!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- sendOtaspResult:  SENDING PENDING INTENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 851
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PendingIntent send() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSpeaker(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeaker : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 563
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 564
    const-string v0, "non-interactive mode, ignoring setSpeaker."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 578
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 569
    const-string v0, "no change. returning"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothManager;->disconnectBluetoothAudio()V

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static setupOtaspCall(Landroid/content/Intent;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupOtaspCall(): preparing for OTASP call to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 506
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_0

    .line 509
    const-string v1, "OtaUtils"

    const-string v2, "setupOtaspCall: OtaUtils already exists; replacing with new instance..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    new-instance v1, Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;ZLcom/android/phone/BluetoothManager;)V

    iput-object v1, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- created OtaUtils: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 531
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v1, v2}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 555
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_1

    .line 556
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 558
    :cond_1
    return-void
.end method

.method public static startInteractiveOtasp(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    const-string v2, "startInteractiveOtasp()..."

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 356
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/phone/InCallScreenShowActivation;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 363
    .local v0, "activationScreenIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 368
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    .line 371
    const-string v2, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startInteractiveOtasp: launching InCallScreen in \'activate\' state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method public static startNonInteractiveOtasp(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 388
    const-string v4, "startNonInteractiveOtasp()..."

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 391
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_0

    .line 393
    const-string v4, "OtaUtils"

    const-string v5, "startNonInteractiveOtasp: OtaUtils already exists; nuking the old one and starting again..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    new-instance v4, Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v5

    invoke-direct {v4, p0, v7, v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;ZLcom/android/phone/BluetoothManager;)V

    iput-object v4, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- created OtaUtils: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 407
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    const-string v2, "*22899"

    .line 408
    .local v2, "number":Ljava/lang/String;
    const-string v4, "OtaUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startNonInteractiveOtasp: placing call to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v4, 0x0

    invoke-static {p0, v3, v2, v4, v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v1

    .line 415
    .local v1, "callStatus":I
    if-nez v1, :cond_1

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> successful return from placeCall(): callStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 434
    :goto_0
    return v1

    .line 418
    :cond_1
    const-string v4, "OtaUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure from placeCall() for OTA number \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNonInteractiveOtaSuccessFailure()V
    .locals 3

    .prologue
    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNonInteractiveOtaSuccessFailure(): isOtaCallCommitted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 810
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 813
    .local v0, "resultCode":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    .line 814
    return-void

    .line 810
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private updateOtaspProgress()V
    .locals 2

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOtaspProgress()...  mInteractive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 777
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    .line 794
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanOtaScreen(Z)V
    .locals 5
    .param p1, "disableSpeaker"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1405
    const-string v0, "OTA ends, cleanOtaScreen!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1409
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 1410
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1411
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1412
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 1413
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 1414
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1416
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1431
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1432
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1433
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1438
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1444
    :cond_0
    if-eqz p1, :cond_1

    .line 1445
    invoke-direct {p0, v4}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1447
    :cond_1
    return-void
.end method

.method public dismissAllOtaDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1305
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1307
    const-string v0, "- DISMISSING mSpcErrorDialog."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1309
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1312
    const-string v0, "- DISMISSING mOtaFailureDialog."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1314
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1317
    :cond_1
    return-void
.end method

.method public getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    .locals 2

    .prologue
    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCdmaOtaInCallScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    return-object v0
.end method

.method public hideOtaScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1101
    const-string v0, "hideOtaScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1107
    return-void
.end method

.method public isDialerOpened()Z
    .locals 3

    .prologue
    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, "retval":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isDialerOpened() ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1113
    return v0
.end method

.method public onClickHandler(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1200
    packed-switch p1, :pswitch_data_0

    .line 1226
    :pswitch_0
    const-string v0, "onClickHandler: received a click event for unrecognized id"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1229
    :goto_0
    return-void

    .line 1202
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaEndButton()V

    goto :goto_0

    .line 1206
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaSpeakerButton()V

    goto :goto_0

    .line 1210
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateButton()V

    goto :goto_0

    .line 1214
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateSkipButton()V

    goto :goto_0

    .line 1218
    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateNextButton()V

    goto :goto_0

    .line 1222
    :pswitch_6
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaTryAgainButton()V

    goto :goto_0

    .line 1200
    nop

    :pswitch_data_0
    .packed-switch 0x7f07007e
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onOtaCloseFailureNotice()V
    .locals 2

    .prologue
    .line 1054
    const-string v0, "onOtaCloseFailureNotice()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1057
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1059
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 1060
    return-void
.end method

.method public onOtaCloseSpcNotice()V
    .locals 3

    .prologue
    .line 1022
    const-string v1, "onOtaCloseSpcNotice(), send shutdown intent"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, "shutdown":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1025
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1026
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1027
    return-void
.end method

.method public onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 591
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 592
    .local v0, "OtaStatus":[I
    const-string v1, "Provision status event!"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaProvisionStatusChanged(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->otaProvisionStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 601
    aget v1, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaProvisionStatusChanged(): Ignoring OtaStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 603
    :pswitch_0
    const-string v1, "onOtaProvisionStatusChanged(): RETRIES EXCEEDED"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    .line 605
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 606
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v1, :cond_1

    .line 607
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->otaShowSpcErrorNotice(I)V

    goto :goto_0

    .line 609
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    goto :goto_0

    .line 616
    :pswitch_1
    const-string v1, "onOtaProvisionStatusChanged(): DONE, isOtaCallCommitted set to true"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 619
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    goto :goto_0

    .line 637
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v2, :cond_0

    .line 638
    const-string v1, "onOtaProvisionStatusChanged(): change to ProgressScreen"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 639
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onOtaspDisconnect()V
    .locals 1

    .prologue
    .line 653
    const-string v0, "onOtaspDisconnect()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 657
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 659
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateNonInteractiveOtaSuccessFailure()V

    .line 661
    :cond_0
    return-void
.end method

.method public otaShowActivateScreen()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 718
    const-string v0, "otaShowActivateScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 721
    const-string v0, "otaShowActivateScreen(): show activation screen"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 724
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    sget-boolean v0, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 735
    :goto_1
    return-void

    .line 724
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 732
    :cond_2
    const-string v0, "otaShowActivateScreen(): show home screen"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowHome()V

    goto :goto_1
.end method

.method public otaShowProperScreen()V
    .locals 2

    .prologue
    .line 1127
    const-string v0, "otaShowProperScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1128
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 1130
    const-string v0, "OtaUtils"

    const-string v1, "otaShowProperScreen: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_0
    return-void
.end method

.method public otaShowSuccessFailure()V
    .locals 2

    .prologue
    .line 927
    const-string v0, "otaShowSuccessFailure()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 928
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 930
    const-string v0, "OtaUtils"

    const-string v1, "otaShowSuccessFailure: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :goto_0
    return-void

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaShowSuccessFailure(): isOtaCallCommitted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v0, :cond_1

    .line 938
    const-string v0, "otaShowSuccessFailure(), show success dialog"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 939
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowProgramSuccessDialog()V

    goto :goto_0

    .line 941
    :cond_1
    const-string v0, "otaShowSuccessFailure(), show failure dialog"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 942
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->otaShowProgramFailure(I)V

    goto :goto_0
.end method

.method public setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCdmaOtaInCallScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1503
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iput-object p1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1504
    return-void
.end method
