.class public Lcom/android/internal/telephony/gemini/MTKPhoneFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static H:Lcom/android/internal/telephony/Phone;

.field private static I:Lcom/android/internal/telephony/CommandsInterface;

.field private static J:Lcom/android/internal/telephony/CommandsInterface;

.field private static K:Lcom/android/internal/telephony/CommandsInterface;

.field private static L:Lcom/android/internal/telephony/CommandsInterface;

.field private static M:Z

.field private static N:Lcom/android/internal/telephony/PhoneNotifier;

.field private static O:Lcom/android/internal/telephony/PhoneNotifier;

.field private static P:Landroid/os/Looper;

.field private static Q:Landroid/content/Context;

.field private static R:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static S:I

.field static T:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 90
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 91
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 92
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->K:Lcom/android/internal/telephony/CommandsInterface;

    .line 93
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->L:Lcom/android/internal/telephony/CommandsInterface;

    .line 95
    sput-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->M:Z

    .line 103
    sput v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;III)V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 352
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 354
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 355
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 357
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 358
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 361
    new-instance v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 362
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating EVDO GeminiPhone with CDMA as Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 364
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 365
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 366
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 367
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 368
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 369
    new-instance v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 372
    new-instance v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 373
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating EVDO GeminiPhone with CDMA as Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;III)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 386
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode_2"

    sget v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 389
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network Mode 2 set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v3, Lcom/android/internal/telephony/RIL;

    invoke-direct {v3, p0, p3, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 391
    new-instance v3, Lcom/android/internal/telephony/RIL;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 406
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 407
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 408
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v3, v4, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 410
    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 413
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v3, v4, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 415
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating GSM GeminiPhone with default phone at Phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 417
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 418
    return-void

    .line 393
    :cond_0
    const-string v0, "com.mtk.3G_SWITCH"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 394
    const-string v0, "gsm.3gswitch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 395
    :goto_1
    const-string v4, "3G_SIM_ID"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 396
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initiate 3G Sim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-nez v0, :cond_2

    .line 399
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 400
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 394
    goto :goto_1

    .line 402
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 403
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_0
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 465
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 467
    monitor-exit v1

    return-object v0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 485
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    .line 486
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    .line 489
    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    .line 491
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 492
    monitor-exit v3

    .line 495
    :goto_2
    return-object v0

    .line 487
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    goto :goto_0

    .line 489
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    goto :goto_1

    .line 494
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 495
    monitor-exit v3

    goto :goto_2

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 472
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 474
    monitor-exit v1

    return-object v0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 501
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    .line 502
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    .line 505
    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    .line 507
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 508
    monitor-exit v3

    .line 511
    :goto_2
    return-object v0

    .line 503
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    goto :goto_0

    .line 505
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    goto :goto_1

    .line 510
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 511
    monitor-exit v3

    goto :goto_2

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPhoneType(I)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 427
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 444
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 437
    goto :goto_0

    .line 442
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 3

    .prologue
    .line 479
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 16

    .prologue
    const/4 v11, -0x1

    const/4 v15, 0x2

    const/4 v14, 0x3

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 113
    const-class v10, Lcom/android/internal/telephony/Phone;

    monitor-enter v10

    .line 114
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->M:Z

    if-nez v1, :cond_4

    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->P:Landroid/os/Looper;

    .line 116
    sput-object p0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Q:Landroid/content/Context;

    .line 118
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->P:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 123
    :cond_0
    :try_start_1
    const-string v1, "persist.service.conn.looper"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x3

    const-string v5, "PHONE"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v1, v9

    .line 131
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 136
    :try_start_2
    new-instance v3, Landroid/net/LocalServerSocket;

    const-string v4, "com.android.internal.telephony"

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v9

    .line 141
    :goto_1
    if-nez v3, :cond_5

    .line 153
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    .line 155
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 156
    const/4 v1, 0x7

    sput v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    .line 159
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 161
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network Mode set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "persist.radio.default_sim_mode"

    sget v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->S:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 167
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gemini Network Mode set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v5

    .line 170
    const-string v3, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cdma Subscription set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v3, "com.mtk.3G_SWITCH"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 175
    const-string v3, "gsm.3gswitch"

    const/4 v7, 0x1

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v15, :cond_7

    move v3, v2

    .line 176
    :goto_2
    const-string v7, "3G_SIM_ID"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 177
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initiate 3G Sim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {v4}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getPhoneType(I)I

    move-result v4

    .line 180
    if-ne v4, v2, :cond_8

    .line 181
    new-instance v2, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 182
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 183
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 184
    const-string v1, "PHONE"

    const-string v2, "Creating GSMPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_3
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 334
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->M:Z

    .line 338
    :cond_4
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->R:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->R:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->updateRegistryCellLocation()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 346
    :goto_4
    :try_start_5
    monitor-exit v10

    .line 347
    return-void

    .line 137
    :catch_0
    move-exception v3

    move v3, v2

    .line 138
    goto/16 :goto_1

    .line 143
    :cond_5
    if-le v1, v14, :cond_6

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory probably already running"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    :cond_6
    const-wide/16 v3, 0x7d0

    :try_start_6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 148
    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_7
    move v3, v9

    .line 175
    goto/16 :goto_2

    .line 185
    :cond_8
    if-ne v4, v15, :cond_9

    .line 186
    :try_start_7
    new-instance v2, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 187
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 188
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 189
    const-string v1, "PHONE"

    const-string v2, "Creating CDMAPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 190
    :cond_9
    const/4 v6, 0x4

    if-ne v4, v6, :cond_3

    .line 191
    new-instance v4, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    sput-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    .line 192
    new-instance v7, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v4, 0x2

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 193
    new-instance v8, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v4, 0x3

    invoke-direct {v8, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 197
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 199
    const-string v3, "persist.radio.default_sim"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 200
    if-ne v3, v11, :cond_19

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    if-nez v3, :cond_a

    move v2, v9

    .line 208
    :cond_a
    const-string v3, "persist.radio.default_sim"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_5
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Default Phone as SIM"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " during first boot-up (EVDO DT)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v1}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a(Landroid/content/Context;III)V

    .line 321
    :cond_b
    :goto_6
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    move-result-object v2

    .line 323
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 324
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 325
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v1, v14, :cond_c

    .line 326
    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 327
    :cond_c
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    .line 328
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    goto/16 :goto_3

    .line 215
    :cond_d
    const-string v2, "persist.radio.default_sim"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 216
    if-ne v2, v11, :cond_18

    .line 218
    const/4 v2, 0x0

    .line 219
    const-string v3, "persist.radio.default_sim"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_7
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Default Phone as SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " during first boot-up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    invoke-static {v0, v9, v5, v1}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b(Landroid/content/Context;III)V

    goto :goto_6

    .line 228
    :cond_e
    const-string v4, "persist.radio.default_sim"

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 229
    if-ne v6, v11, :cond_f

    .line 231
    const/4 v4, 0x0

    .line 232
    const-string v6, "persist.radio.default_sim"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v9

    .line 234
    :cond_f
    const-string v4, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set Default Phone as SIM"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " during first boot-up"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v4, v4, [I

    .line 238
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v11, "preferred_network_mode_2"

    sget v12, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:I

    invoke-static {v3, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 241
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    move v2, v3

    .line 250
    :goto_8
    :pswitch_0
    const-string v3, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Network Mode 2 set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v3, Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v5, v11}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 252
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    .line 266
    :goto_9
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 267
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 270
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v11, v1, [Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 273
    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v12, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->N:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 275
    const/4 v1, 0x1

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v12, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->O:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 278
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v1, v15, :cond_10

    .line 279
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-direct {v3, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v2, v3, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 283
    :cond_10
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v1, v14, :cond_12

    .line 284
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x2

    aget v2, v4, v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->K:Lcom/android/internal/telephony/CommandsInterface;

    .line 286
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->K:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 288
    const/4 v1, 0x2

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->K:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v7, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 291
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v1, v14, :cond_11

    .line 292
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-direct {v3, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v12, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v2, v3, v12, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 296
    :cond_11
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 297
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x3

    aget v2, v4, v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->L:Lcom/android/internal/telephony/CommandsInterface;

    .line 299
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->L:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 301
    const/4 v1, 0x3

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->L:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v8, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v11, v1

    .line 304
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v4, 0x1

    aget-object v4, v11, v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v5, 0x2

    aget-object v5, v11, v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v5, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x3

    aget-object v12, v11, v12

    invoke-direct {v5, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->H:Lcom/android/internal/telephony/Phone;

    .line 309
    :cond_12
    const-string v1, "PHONE"

    const-string v2, "Creating GeminiPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    .line 311
    :goto_a
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v1, :cond_b

    move v1, v9

    .line 312
    :goto_b
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v3, :cond_17

    .line 313
    if-eq v1, v2, :cond_13

    .line 314
    aget-object v3, v11, v2

    aget-object v4, v11, v1

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhones(Lcom/android/internal/telephony/gsm/GSMPhone;I)V

    .line 312
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :pswitch_1
    move v1, v2

    .line 243
    goto/16 :goto_8

    :cond_14
    move v2, v9

    .line 254
    :goto_c
    sget v11, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v11, :cond_16

    .line 255
    if-ne v3, v2, :cond_15

    .line 256
    aput v1, v4, v2

    .line 254
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 258
    :cond_15
    const/4 v11, 0x1

    aput v11, v4, v2

    goto :goto_d

    .line 262
    :cond_16
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->I:Lcom/android/internal/telephony/CommandsInterface;

    .line 263
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->J:Lcom/android/internal/telephony/CommandsInterface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_9

    .line 311
    :cond_17
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    .line 342
    :catch_2
    move-exception v1

    goto/16 :goto_4

    :cond_18
    move v9, v2

    goto/16 :goto_7

    :cond_19
    move v2, v3

    goto/16 :goto_5

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeDefaultPhone(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 108
    sput p1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->S:I

    .line 109
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 110
    return-void
.end method
