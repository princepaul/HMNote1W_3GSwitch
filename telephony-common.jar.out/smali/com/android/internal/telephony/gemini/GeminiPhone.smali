.class public Lcom/android/internal/telephony/gemini/GeminiPhone;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiPhone$a;
    }
.end annotation


# static fields
.field protected static final EVENT_3G_SWITCH_SET_PREFERRED_NETWORK_MODE:I = 0x3

.field protected static final EVENT_DUAL_SIM_SWITCH_DONE:I = 0x1

.field protected static final EVENT_GET_AVAILABLE_NW:I = 0x6

.field protected static final EVENT_GET_ICCID_FOR_SIM_HOT_SWAP_DONE:I = 0x5

.field protected static final EVENT_GET_NETWORK_SELECTION_MODE:I = 0x4

.field protected static final EVENT_GPRS_DETACHED:I = 0x7

.field public static EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String; = null

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x8

.field protected static final EVENT_SIM_INSERTED_STATUS:I = 0x2

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final PREFERENCE_3G_SWITCH:Ljava/lang/String; = "com.mtk.3G_SWITCH"

.field public static final PREF_3G_SIM_ID:Ljava/lang/String; = "3G_SIM_ID"

.field public static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field public static final PROPERTY_SMART_3G_SWITCH:Ljava/lang/String; = "ro.gemini.smart_3g_switch"

.field protected static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field protected static final STATUS_NO_SIM_INSERTED:I = 0x0

.field protected static final STATUS_QUAD_SIM_INSERTED:I = 0xf

.field protected static final STATUS_SIM1_INSERTED:I = 0x1

.field protected static final STATUS_SIM2_INSERTED:I = 0x2

.field protected static final STATUS_SIM3_INSERTED:I = 0x4

.field protected static final STATUS_SIM4_INSERTED:I = 0x8

.field protected static final STATUS_TRIPLE_SIM_INSERTED:I = 0x7

.field private static al:Landroid/content/SharedPreferences;

.field private static final av:[I


# instance fields
.field private A:[Ljava/lang/String;

.field private U:Lcom/android/internal/telephony/Phone;

.field private V:[Lcom/android/internal/telephony/Phone;

.field private W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

.field private X:I

.field private Y:I

.field private Z:I

.field private aA:Ljava/lang/Runnable;

.field private aB:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

.field private aC:Ljava/lang/Runnable;

.field private aa:I

.field private ab:I

.field private ac:I

.field ad:Lcom/mediatek/common/telephony/ISimInfoUpdate;

.field private ae:Landroid/os/RegistrantList;

.field private af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

.field private ag:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

.field private ah:Lcom/mediatek/common/telephony/ITelephonyExt;

.field private ai:I

.field private aj:Z

.field private ak:Z

.field private am:I

.field private an:Landroid/os/PowerManager$WakeLock;

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:I

.field private at:I

.field private au:I

.field private aw:[Ljava/lang/String;

.field private ax:Z

.field private ay:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

.field private az:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const-string v0, "com.mtk.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    .line 248
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 276
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    .line 166
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:I

    .line 169
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    .line 170
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    .line 172
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    .line 173
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ac:I

    .line 176
    iput-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 178
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ae:Landroid/os/RegistrantList;

    .line 221
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:I

    .line 231
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    .line 236
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 244
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 247
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v7

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v8

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:[Ljava/lang/String;

    .line 684
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Ljava/lang/Runnable;

    .line 869
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Ljava/lang/Runnable;

    .line 2697
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 2877
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v2

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v7

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    .line 281
    iput-boolean v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Z

    .line 283
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 286
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()I

    move-result v2

    .line 289
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :try_start_1
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISwitch3GPolicyWrapper created (mSwitch3GPolicyWrapper="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 296
    :goto_0
    if-nez v0, :cond_2

    .line 297
    const-string v0, "PHONE"

    const-string v1, "Switch 3G Policy Wrapper Missing (mSwitch3GPolicyWrapper=null), Switch 3G Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_1
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 315
    :goto_2
    :try_start_3
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 319
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isWorldPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :try_start_4
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_5

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 323
    const-class v0, Lcom/mediatek/common/telephony/IWorldPhone;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IWorldPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 332
    :cond_0
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    .line 335
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 342
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()V

    .line 349
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    .line 350
    return-void

    .line 291
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 292
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISwitch3GPolicyWrapper create exception (mSwitch3GPolicyWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    .line 299
    :cond_2
    if-ne v2, v7, :cond_3

    .line 300
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 305
    :goto_6
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSwitch3GPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 301
    :cond_3
    if-ne v2, v8, :cond_4

    .line 302
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_6

    .line 304
    :cond_4
    iput-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_6

    .line 311
    :catch_1
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 316
    :catch_2
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 325
    :cond_5
    :try_start_5
    const-class v0, Lcom/mediatek/common/telephony/IWorldPhone;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IWorldPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4

    .line 327
    :catch_3
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 291
    :catch_4
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_5
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 352
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    .line 166
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:I

    .line 169
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    .line 170
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    .line 172
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    .line 173
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ac:I

    .line 176
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 178
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ae:Landroid/os/RegistrantList;

    .line 221
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:I

    .line 231
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    .line 236
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 244
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 247
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v7

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v8

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:[Ljava/lang/String;

    .line 684
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Ljava/lang/Runnable;

    .line 869
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Ljava/lang/Runnable;

    .line 2697
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 2877
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v2

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v7

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v8

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p4

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    .line 358
    iput-boolean v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Z

    .line 360
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 363
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()I

    move-result v2

    .line 366
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :try_start_1
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISwitch3GPolicyWrapper created (mSwitch3GPolicyWrapper="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 373
    :goto_0
    if-nez v0, :cond_1

    .line 374
    const-string v0, "PHONE"

    const-string v1, "Switch 3G Policy Wrapper Missing (mSwitch3GPolicyWrapper=null), Switch 3G Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_1
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 392
    :goto_2
    :try_start_3
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 397
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    .line 400
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 404
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 407
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()V

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    .line 415
    return-void

    .line 368
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 369
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISwitch3GPolicyWrapper create exception (mSwitch3GPolicyWrapper="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    .line 376
    :cond_1
    if-ne v2, v7, :cond_2

    .line 377
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 382
    :goto_5
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSwitch3GPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    :cond_2
    if-ne v2, v8, :cond_3

    .line 379
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 381
    :cond_3
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 388
    :catch_1
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 393
    :catch_2
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 368
    :catch_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aa:I

    .line 170
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ab:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ac:I

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 178
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ae:Landroid/os/RegistrantList;

    .line 221
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:I

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Z

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ril.iccid.sim1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ril.iccid.sim2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ril.iccid.sim4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:[Ljava/lang/String;

    .line 684
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Ljava/lang/Runnable;

    .line 869
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Ljava/lang/Runnable;

    .line 2697
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 2877
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Z

    .line 426
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 429
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()I

    move-result v2

    .line 430
    const/4 v1, 0x0

    .line 432
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :try_start_1
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISwitch3GPolicyWrapper created (mSwitch3GPolicyWrapper="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 439
    :goto_0
    if-nez v0, :cond_1

    .line 440
    const-string v0, "PHONE"

    const-string v1, "Switch 3G Policy Wrapper Missing (mSwitch3GPolicyWrapper=null), Switch 3G Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_1
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 458
    :goto_2
    :try_start_3
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 463
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    .line 466
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 470
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 473
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()V

    .line 480
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    .line 481
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISwitch3GPolicyWrapper create exception (mSwitch3GPolicyWrapper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    .line 442
    :cond_1
    const/4 v1, 0x1

    if-ne v2, v1, :cond_2

    .line 443
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 448
    :goto_5
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSwitch3GPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 444
    :cond_2
    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    .line 445
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 447
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_5

    .line 454
    :catch_1
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 459
    :catch_2
    move-exception v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 434
    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    return p1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    return p1
.end method

.method private c()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCall,mSimInsertedStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    if-eq v0, v1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_internet_call_value"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceCall,defaultSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 566
    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_1

    .line 570
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_call_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceCall,simid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 577
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCall,defaultSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_call_sim_setting"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_2
    const-string v0, "setVoiceCall else"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(I)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 693
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Z

    .line 694
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()Z

    move v0, v1

    .line 695
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 700
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_16

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIccId"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    .line 708
    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    if-eqz v0, :cond_3

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILD initialize not completed, wait for it,counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 786
    :goto_3
    return-void

    .line 700
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 714
    :cond_3
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    .line 715
    const-string v0, "start telephony framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 717
    :goto_4
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_5

    .line 718
    const-string v2, "N/A"

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 719
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 717
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 721
    :cond_5
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    move v2, v1

    .line 723
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_c

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    const-string v0, ""

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 725
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    shl-int v4, v3, v2

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    .line 726
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 727
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    shl-int v4, v3, v2

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 729
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 731
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.sim.ril.op"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_a

    const-string v0, ""

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 733
    const-string v0, ""

    .line 734
    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_8

    const-string v5, ""

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_b

    const-string v0, ""

    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 737
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertImsi2Op (simIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", opStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 740
    :cond_8
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set sim op property (simIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", propName="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 743
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setSIMIccId(ILjava/lang/String;)V

    .line 723
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    .line 732
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 735
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 745
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertedStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x2

    :goto_8
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_d

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIccId[SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 749
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 750
    const-string v0, "[IRC] Stop initializeTelephonyFramework, start switch phone."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 751
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->p()V

    goto/16 :goto_3

    .line 755
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    if-eqz v0, :cond_f

    .line 756
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_11

    .line 757
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 764
    :cond_f
    :goto_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v2, :cond_15

    .line 766
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v2

    .line 767
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()I

    move-result v3

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_14

    if-ltz v3, :cond_14

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_14

    if-eq v2, v3, :cond_14

    .line 769
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 770
    if-eqz v0, :cond_12

    .line 771
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 772
    :goto_a
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_13

    .line 773
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 759
    :cond_11
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 760
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    goto :goto_9

    .line 776
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    .line 785
    :cond_13
    :goto_b
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Z

    goto/16 :goto_3

    .line 779
    :cond_14
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 780
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    goto :goto_b

    .line 783
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    goto :goto_b

    :cond_16
    move v0, v1

    goto/16 :goto_2
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:I

    return v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 789
    const-string v0, "start telephony framework initialization for sim hot swap"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 790
    iput-boolean v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Z

    .line 794
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v7, :cond_2

    .line 795
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    if-eqz v0, :cond_1

    .line 796
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 798
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    if-nez v0, :cond_5

    .line 800
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    .line 801
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 810
    :cond_1
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    :cond_2
    move v0, v1

    .line 816
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_9

    .line 817
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    shl-int v3, v7, v0

    and-int/2addr v2, v3

    if-nez v2, :cond_6

    .line 818
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 822
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm.sim.ril.op"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_7

    const-string v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 824
    const-string v2, ""

    .line 825
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    const-string v4, ""

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_8

    const-string v2, ""

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 827
    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 828
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 829
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertImsi2Op (simIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 831
    :cond_3
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set sim op property (simIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", opStr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", propName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 816
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 803
    :cond_5
    const-string v0, "Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 867
    :goto_4
    return-void

    .line 820
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_1

    .line 823
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 826
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 836
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    if-eqz v0, :cond_a

    .line 837
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_c

    .line 838
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 845
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v2, :cond_10

    .line 847
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v2

    .line 848
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()I

    move-result v3

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_f

    if-ltz v3, :cond_f

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_f

    if-eq v2, v3, :cond_f

    .line 850
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 851
    if-eqz v0, :cond_d

    .line 852
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 853
    :goto_6
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_e

    .line 854
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 840
    :cond_c
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    goto :goto_5

    .line 857
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    .line 866
    :cond_e
    :goto_7
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Z

    goto/16 :goto_4

    .line 860
    :cond_f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 861
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    goto :goto_7

    .line 864
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    goto :goto_7
.end method

.method private e(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneTypeGemini(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 937
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 938
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Z

    .line 939
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 940
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 948
    :goto_0
    return-void

    .line 941
    :cond_0
    if-ltz p1, :cond_1

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge p1, v0, :cond_1

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To re-register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 946
    :cond_1
    const-string v0, "To re-register invalid phone inserted status notification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:Z

    if-eqz v0, :cond_0

    .line 879
    const-string v0, "Need to initialize framework again, abort update SIMInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:Z

    .line 881
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    .line 905
    :goto_0
    return-void

    .line 885
    :cond_0
    const-string v0, "start update SIM information"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->broadcastSimInsertedStatusAdp(I)V

    .line 887
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 889
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->start()V

    .line 904
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    return-void
.end method

.method private f(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1015
    .line 1016
    if-nez p1, :cond_2

    .line 1017
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1027
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1028
    return v0

    :cond_1
    move v0, v1

    .line 1017
    goto :goto_0

    .line 1018
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1019
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1020
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 1021
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1022
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 1023
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1025
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 908
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:Z

    if-eqz v1, :cond_0

    .line 909
    const-string v1, "Need to initialize framework again, abort initialize radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 910
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:Z

    .line 911
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    .line 931
    :goto_0
    return-void

    .line 915
    :cond_0
    const-string v1, "start initializing radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 917
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Z

    if-eqz v1, :cond_1

    .line 918
    const-string v1, "query SIM Missing status for gemini card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 919
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Z

    .line 920
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->notifySimMissingStatus(Z)V

    .line 920
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->finishRadioStatusInitialization([Ljava/lang/String;I)V

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ak:Z

    .line 928
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 930
    const-string v0, "broadcast GeminiPhone.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    return-void
.end method

.method private g(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 2752
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ak:Z

    .line 2754
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()Z

    .line 2756
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 2757
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->set3GCapabilitySIM(I)Z

    move-result v3

    .line 2759
    if-eqz v3, :cond_3

    move v1, v2

    .line 2760
    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_2

    .line 2761
    if-ne p1, v1, :cond_1

    .line 2762
    const-string v0, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force3GSwitch:setPreferredNetworkType:Auto,GSM only ,sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2764
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 2760
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2766
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_1

    .line 2768
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_1

    .line 2771
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2772
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)V

    .line 2778
    :goto_2
    return v3

    .line 2774
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "force3GSwitch else case"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    iput-boolean v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ak:Z

    .line 2776
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    goto :goto_2
.end method

.method public static get3GSimId()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2609
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2610
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2611
    if-lez v1, :cond_1

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt v1, v2, :cond_1

    .line 2612
    add-int/lit8 v0, v1, -0x1

    .line 2618
    :cond_0
    :goto_0
    return v0

    .line 2614
    :cond_1
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get3GSimId() got invalid property value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2843
    const/4 v1, 0x0

    .line 2844
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "com.mtk.3G_SWITCH"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2845
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2847
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2849
    const-string v0, "PHONE"

    const-string v1, "Just turn off 3G capability. not to store ICCID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    :goto_0
    return-void

    :cond_0
    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 2853
    :goto_1
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v3, :cond_2

    .line 2854
    if-ne p1, v1, :cond_1

    .line 2855
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 2853
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2858
    :cond_2
    const-string v1, "3G_SIM_ID"

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2860
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    if-eqz v1, :cond_3

    .line 2861
    const-string v1, "3G_SIM_ICCID"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2862
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2863
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current 3G SIM ICCID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2865
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "No SIM inserted, not to store ICCID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2508
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    return-object v0
.end method

.method private i()I
    .locals 2

    .prologue
    .line 2513
    const-string v0, "ro.gemini.smart_3g_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private j()I
    .locals 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 2782
    const/4 v12, -0x1

    .line 2783
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v2, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2784
    const-string v2, "3G_SIM_ICCID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2785
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v3

    .line 2786
    const-string v0, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check if need to do bootup 3G Switch ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2788
    :goto_0
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v4, :cond_0

    .line 2789
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimInsertedStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mIccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2793
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    if-nez v0, :cond_2

    if-ltz v3, :cond_2

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_2

    .line 2794
    const/4 v0, -0x1

    .line 2795
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v4, :cond_6

    .line 2798
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v9, :cond_a

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v8

    :goto_1
    move-object v4, v0

    .line 2799
    :goto_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v10, :cond_9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v9

    :goto_3
    move-object v5, v0

    .line 2800
    :goto_4
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v11, :cond_8

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v10

    :goto_5
    move-object v6, v0

    .line 2801
    :goto_6
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v7, 0x4

    if-lt v0, v7, :cond_7

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v1, v0, v11

    :cond_1
    move-object v7, v1

    .line 2803
    :goto_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v7}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2810
    :goto_8
    sparse-switch v0, :sswitch_data_0

    move v8, v12

    .line 2836
    :goto_9
    :sswitch_0
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target3GSIM simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selected3G="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v8

    .line 2839
    :cond_2
    return v12

    :cond_3
    move-object v0, v1

    .line 2798
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 2799
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 2800
    goto :goto_5

    .line 2807
    :cond_6
    const-string v1, "PHONE"

    const-string v2, "no 3g switch policy instance. (mSwitch3GPolicy null)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :sswitch_1
    move v8, v9

    .line 2817
    goto :goto_9

    :sswitch_2
    move v8, v10

    .line 2821
    goto :goto_9

    :sswitch_3
    move v8, v11

    .line 2825
    goto :goto_9

    .line 2828
    :sswitch_4
    const/4 v8, -0x1

    .line 2829
    goto :goto_9

    :cond_7
    move-object v7, v1

    goto :goto_7

    :cond_8
    move-object v6, v1

    goto :goto_6

    :cond_9
    move-object v5, v1

    goto :goto_4

    :cond_a
    move-object v4, v1

    goto :goto_2

    .line 2810
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    return v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 2871
    const-string v0, "PHONE"

    const-string v1, "broadcast3GSwitchDoneEvent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    .line 2873
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2874
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2875
    return-void
.end method

.method static synthetic l(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private l()Z
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 2979
    const/4 v0, 0x1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 972
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 980
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 988
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 984
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void
.end method

.method static synthetic m(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3228
    const-string v0, "createInternationalRoamingController"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3229
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_0

    .line 3230
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    .line 3236
    :goto_0
    return-void

    .line 3233
    :cond_0
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    goto :goto_0
.end method

.method static synthetic n(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:I

    return v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 3239
    const-string v0, "createDefaultSmsSetting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3241
    :try_start_0
    const-class v0, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3246
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    if-nez v0, :cond_0

    .line 3247
    const-string v0, "PHONE"

    const-string v1, "FAIL! initial IDefaultSmsSimSettingsExt"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_0
    return-void

    .line 3242
    :catch_0
    move-exception v0

    .line 3243
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Ljava/lang/Runnable;

    return-object v0
.end method

.method private o()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3263
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 3264
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v3

    .line 3265
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 3267
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IRC] needSwitchPhone phoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3268
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v4, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnGsm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v3, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnCDMA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    .line 3274
    :goto_1
    return v0

    .line 3265
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 3274
    goto :goto_1
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3281
    const-string v0, "[IRC] doSwitchPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3282
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    .line 3283
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Z

    .line 3284
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Z

    .line 3285
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 3286
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 3287
    return-void
.end method


# virtual methods
.method public abortFemtoCellList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 3176
    const-string v0, "Geminiphone abortFemtoCellList()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3177
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->abortFemtoCellList(Landroid/os/Message;I)V

    .line 3178
    return-void
.end method

.method public abortFemtoCellList(Landroid/os/Message;I)V
    .locals 2

    .prologue
    .line 3191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortFemtoCellList(),simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3192
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->abortFemtoCellList(Landroid/os/Message;)V

    .line 3193
    return-void
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1748
    return-void
.end method

.method public acceptVtCallWithVoiceOnly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptVtCallWithVoiceOnly()V

    .line 1817
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 2154
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->cancelAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 1928
    return-void
.end method

.method public cancelAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->cancelAvailableNetworks(Landroid/os/Message;)V

    .line 1263
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2303
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2307
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1784
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 1764
    return-void
.end method

.method public dataConnectivityDecideSimId()I
    .locals 1

    .prologue
    .line 3255
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dataConnectivityDecideSimId()I

    move-result v0

    return v0
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialUpCsd(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 3251
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dialUpCsd(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheck(Z)V

    .line 1551
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheckGemini(ZI)V

    .line 1204
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 2030
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ad:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->disposeReceiverAdp()V

    .line 488
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isWorldPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IWorldPhone;->disposeWorldPhone()V

    .line 491
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_1
    return-void
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2500
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2504
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2082
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()Z

    .line 2083
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1391
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()Z

    .line 1393
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 1768
    return-void
.end method

.method public enableGPRSAlwaysAttachIfNecessary(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2924
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGPRSAlwaysAttachIfNecessary( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    if-gtz p1, :cond_1

    .line 2962
    :cond_0
    :goto_0
    return-void

    .line 2930
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "com.mtk.GPRS"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2931
    const-string v1, "ATTACH_MODE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2932
    const-string v2, "ATTACH_MODE_SIM"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2933
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set to GPRS mode ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2953
    :pswitch_0
    const-class v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    .line 2954
    invoke-interface {v0}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getPsAttachSimWhenRadioOn()I

    move-result v1

    .line 2955
    if-ltz v1, :cond_0

    shl-int v0, v5, v1

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 2956
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 2957
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    goto :goto_0

    .line 2937
    :pswitch_1
    if-ltz v2, :cond_0

    shl-int v0, v5, v2

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 2938
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 2939
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    goto :goto_0

    .line 2945
    :pswitch_2
    if-ltz v2, :cond_0

    shl-int v0, v5, v2

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 2946
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    goto/16 :goto_0

    .line 2935
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 2026
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 2207
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1780
    return-void
.end method

.method public get3GCapabilitySIM()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 2631
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_2

    .line 2632
    const-string v1, "gsm.baseband.capability"

    .line 2634
    if-lez v0, :cond_0

    .line 2635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2638
    :cond_0
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2640
    if-le v1, v3, :cond_1

    .line 2641
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v0

    .line 2645
    :goto_1
    return v0

    .line 2631
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2644
    :cond_2
    const-string v0, "PHONE"

    const-string v1, "GeminiPhone get3GCapabilitySIM return -1"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public get3GSwitchAllowed3GSlots()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2579
    .line 2581
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()I

    move-result v2

    if-lez v2, :cond_1

    .line 2583
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_5

    .line 2586
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2587
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2588
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_7

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2589
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2591
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2602
    :cond_1
    :goto_7
    return v0

    :cond_2
    move-object v0, v1

    .line 2586
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 2587
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 2588
    goto :goto_4

    .line 2596
    :cond_5
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[get3GSwitchAllowed3GSlots] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2327
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2331
    return-void
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypeGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypesGemini(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoGemini(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1348
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 1924
    return-void
.end method

.method public getAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1242
    .line 1243
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 1244
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetached(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1249
    :goto_1
    if-eq v0, v1, :cond_0

    if-eq v0, p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1251
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1259
    :goto_2
    return-void

    .line 1243
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1253
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1254
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1255
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1256
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1257
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v3, 0x7

    invoke-virtual {v2, v0, p0, v3, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->registerForDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getAvoidSYSList(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 3209
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1791
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBtConnectedSimId()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:I

    return v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1894
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1915
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexGemini(I)I
    .locals 1

    .prologue
    .line 1463
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeGemini(I)I
    .locals 1

    .prologue
    .line 1471
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1467
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 2158
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextGemini(I)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1198
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2323
    return-void
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionListGemini(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallList(Landroid/os/Message;)V

    .line 2014
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallListGemini(Landroid/os/Message;I)V

    .line 1324
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimMode()I
    .locals 1

    .prologue
    .line 1067
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    return v0
.end method

.method public getEfRatBalancing()I
    .locals 1

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEfRatBalancing()I

    move-result v0

    return v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 1772
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsnGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1434
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3158
    const/4 v0, 0x0

    .line 3159
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3160
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3162
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getFDTimerValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2295
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2

    .prologue
    .line 3171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone getFemtoCellList(),operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3172
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;I)V

    .line 3173
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;I)V
    .locals 2

    .prologue
    .line 3186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone getFemtoCellList(),operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",from SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3188
    return-void
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1787
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
    .locals 1

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatusGemini(Lcom/android/internal/telephony/Phone$IccService;I)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1

    .prologue
    .line 1511
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallFailCause()I
    .locals 1

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 3017
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMobileRevisionAndImei(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getMobileRevisionAndImei(ILandroid/os/Message;)V

    .line 2183
    return-void
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoMatchType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3116
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getMvnoMatchType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3124
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1983
    return-void
.end method

.method public getNetworkHideState()I
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getNetworkHideState()I

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1905
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextList(Landroid/os/Message;)V

    .line 2010
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextListGemini(Landroid/os/Message;I)V

    .line 1319
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfoGemini(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeGemini(I)I
    .locals 1

    .prologue
    .line 1212
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhonebyId(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPolCapability(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPolCapability(Landroid/os/Message;)V

    .line 2966
    return-void
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2335
    return-void
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 2970
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1972
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 1974
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1979
    :goto_0
    return-void

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1795
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicatorState()I
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicatorState()I

    move-result v0

    return v0
.end method

.method public getSimInsertedState()I
    .locals 2

    .prologue
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimInsertedState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1072
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    return v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatedRadioControlGemini(I)Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDefaultSim()I
    .locals 4

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ag:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;->getSmsDefaultSim(Landroid/content/Context;)I

    move-result v0

    .line 2494
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsDefaultSim result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    return v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 2179
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1559
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUnitTestModeGemini(I)Z
    .locals 1

    .prologue
    .line 1336
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2986
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    .line 2988
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVtCallForwardingOption(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 2427
    return-void
.end method

.method public getVtCallWaiting(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 2438
    return-void
.end method

.method public getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2446
    return-void
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 590
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 592
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 680
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 594
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    goto :goto_0

    .line 601
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 602
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    goto :goto_0

    .line 607
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 608
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Z

    if-eqz v0, :cond_1

    .line 609
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeMessages(I)V

    .line 610
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Z

    goto :goto_0

    .line 613
    :cond_1
    const-string v0, "receive EVENT_RADIO_AVAILABLE to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 618
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:Z

    .line 619
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:Z

    if-eqz v0, :cond_3

    .line 620
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:Z

    .line 623
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "broadcast 3G switch done event"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    goto :goto_0

    .line 616
    :cond_2
    const-string v0, "receive EVENT_SIM_INSERTED_STATUS to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 622
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    goto :goto_2

    .line 630
    :sswitch_3
    const-string v0, "Receive EVENT_GET_NETWORK_SELECTION_MODE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 631
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 632
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 634
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    .line 635
    aget v0, v0, v1

    if-ne v0, v3, :cond_0

    .line 636
    const-string v0, "Start manual selection mode reminder service in GeminiPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 637
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 638
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.NoNetworkPopUpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 644
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ak:Z

    if-nez v0, :cond_4

    .line 645
    const-string v0, "Not boot up but want to do dual sim switch done, skip"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :cond_4
    const-string v0, "To re-register SIM inserted status notification."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 650
    :goto_3
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_5

    .line 651
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 653
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ae:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 656
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 657
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    .line 658
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 659
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    .line 660
    const-string v0, "3G switch done (set preferred network mode)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 662
    :cond_6
    const-string v0, "Set preferred network mode failed, to use +ES3G and reset modem"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 664
    const/16 v1, 0x63

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 665
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(I)Z

    goto/16 :goto_0

    .line 669
    :sswitch_6
    const-string v0, "Query ICCID for SIM Hot Swap done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 670
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto/16 :goto_0

    .line 673
    :sswitch_7
    const-string v0, "GPRS detached then query available NW."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 674
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 675
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 676
    iget v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 677
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->unregisterForDetached(ILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 592
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hangupActiveCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 2319
    return-void
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 2311
    return-void
.end method

.method public hangupAllEx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 2315
    return-void
.end method

.method public internationalModeForceSimSwitch(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 3216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internationalModeForceSimSwitch simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3217
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3224
    :cond_0
    :goto_0
    return v0

    .line 3221
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3224
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1999
    return-void
.end method

.method public invokeOemRilRequestRawGemini([BLandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1307
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2003
    return-void
.end method

.method public invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1310
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1311
    return-void
.end method

.method public is3GSwitchManualChange3GAllowed()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2552
    .line 2554
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()I

    move-result v2

    if-lez v2, :cond_5

    .line 2556
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_4

    .line 2559
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2560
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2561
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_7

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2562
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2564
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2575
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 2559
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2560
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2561
    goto :goto_4

    .line 2569
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[is3GSwitchManualChange3GAllowed] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5
    move v0, v3

    .line 2573
    goto :goto_7

    :cond_6
    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2525
    .line 2527
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()I

    move-result v2

    if-lez v2, :cond_5

    .line 2529
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_4

    .line 2532
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2533
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2534
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_7

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2535
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2537
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->af:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2548
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 2532
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2533
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2534
    goto :goto_4

    .line 2542
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[is3GSwitchManualEnabled] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5
    move v0, v3

    .line 2546
    goto :goto_7

    :cond_6
    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 1

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetachingOrDetached(I)Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumberGemini(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 1475
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1033
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1047
    :cond_0
    :goto_0
    return v0

    .line 1037
    :cond_1
    if-nez p1, :cond_2

    .line 1038
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1039
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1040
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1041
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 1042
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1043
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 1044
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1046
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioOnGemini() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    move v0, v1

    .line 1047
    goto :goto_0
.end method

.method public isSwitching3GCapability()Z
    .locals 1

    .prologue
    .line 2517
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2518
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    .line 2520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivity()V

    .line 2175
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivityGemini(I)V

    .line 1460
    return-void
.end method

.method public notifySimMissingStatus(Z)V
    .locals 0

    .prologue
    .line 3061
    return-void
.end method

.method public onSimHotSwap(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimHotSwap ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3068
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3069
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    .line 3072
    :cond_0
    if-eqz p2, :cond_2

    .line 3073
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    .line 3074
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3075
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 3077
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    .line 3086
    :goto_0
    return-void

    .line 3081
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3082
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 3084
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_0
.end method

.method public plugInNoSimSlot(I)V
    .locals 3

    .prologue
    .line 3093
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 3094
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 3095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugInNoSimSlot: SIM Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3097
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v1, :cond_0

    .line 3098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:Z

    .line 3099
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3100
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    .line 3107
    :goto_0
    return-void

    .line 3102
    :cond_0
    const-string v0, "plugInNoSimSlot: Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3104
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3105
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 2046
    return-void
.end method

.method public queryAvailableBandModeGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1344
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1345
    return-void
.end method

.method public queryCDMANetworkInfo(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 3212
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 2058
    return-void
.end method

.method public queryCdmaRoamingPreferenceGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1361
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1362
    return-void
.end method

.method public queryCellBroadcastSmsActivation(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 2171
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2150
    return-void
.end method

.method public queryTTYModeGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1454
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1455
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 2

    .prologue
    .line 1163
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 1163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_0
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2263
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2215
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1708
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2417
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1676
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1627
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1628
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2231
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1724
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1700
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1692
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1619
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1620
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2255
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1644
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1636
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2355
    return-void
.end method

.method public registerForNeighboringInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1504
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2363
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1611
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1612
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2239
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1604
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2279
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1487
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1488
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2247
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2455
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1732
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1660
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2223
    return-void
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1479
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1480
    return-void
.end method

.method public registerForSimModeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 997
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 998
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ae:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 999
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 2374
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2375
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1716
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1684
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1668
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2271
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1595
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1596
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2409
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2400
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2392
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2384
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1752
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    .line 498
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2998
    return-void
.end method

.method public requestSwitchHPF(ZLandroid/os/Message;)V
    .locals 0

    .prologue
    .line 3203
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2343
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 3181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3182
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;I)V

    .line 3183
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;I)V
    .locals 2

    .prologue
    .line 3196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3197
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;)V

    .line 3198
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1936
    return-void
.end method

.method public sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 2467
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2203
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1830
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2700
    .line 2701
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    if-eqz v0, :cond_0

    .line 2702
    const-string v0, "PHONE"

    const-string v1, "Switch 3G capability now, not to do it repeatedly"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :goto_0
    return v5

    :cond_0
    move v1, v5

    .line 2705
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_8

    .line 2706
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    .line 2712
    :goto_2
    if-eqz v0, :cond_7

    .line 2713
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone set3GCapabilitySIM ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2715
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2716
    const-string v1, "3G_SIM_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2717
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2718
    iput-boolean v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    .line 2720
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 2721
    const-string v0, "PHONE"

    const-string v1, "Create 3G Switch wakelock"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2723
    const-string v1, "3G_SWITCH"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Landroid/os/PowerManager$WakeLock;

    .line 2724
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2726
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2727
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2728
    const-string v0, "PHONE"

    const-string v3, "Acquire 3G Switch wakelock"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2731
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2733
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2735
    if-ltz p1, :cond_3

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt p1, v0, :cond_4

    :cond_3
    const/4 v0, -0x1

    if-ne v0, p1, :cond_5

    .line 2736
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2738
    :cond_5
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2740
    const-string v0, "PHONE"

    const-string v3, "GeminiPhone is sending ordered pre 3G switch event"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->setSimId(I)V

    .line 2742
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move v5, v8

    .line 2744
    goto/16 :goto_0

    .line 2705
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 2731
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2745
    :cond_7
    const-string v0, "PHONE"

    const-string v1, "Radio unavailable and cannot do 3G Switch"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v0, v8

    goto/16 :goto_2
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2339
    return-void
.end method

.method public setAvoidSYS(ZLandroid/os/Message;)V
    .locals 0

    .prologue
    .line 3206
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 2042
    return-void
.end method

.method public setBandModeGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1340
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1341
    return-void
.end method

.method public setBtConnectedSimId(I)V
    .locals 0

    .prologue
    .line 547
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Z:I

    .line 548
    return-void
.end method

.method public setCRO(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 3055
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3056
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3057
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1901
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1919
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2062
    return-void
.end method

.method public setCdmaRoamingPreferenceGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1365
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1366
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 2066
    return-void
.end method

.method public setCdmaSubscriptionGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1369
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1370
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 2162
    return-void
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 2167
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 511
    return-void
.end method

.method public setCellInfoListRateGemini(II)V
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1353
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 0

    .prologue
    .line 3048
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabled(Z)V

    .line 2054
    return-void
.end method

.method public setDefaultPhone(I)V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    .line 531
    return-void
.end method

.method public setDefaultPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    .line 521
    return-void
.end method

.method public setDualSimMode(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualSimMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1053
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->Y:I

    .line 1055
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1057
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1058
    const-string v1, "Is in flight mode, to re-register inserted status after dual SIM mode changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1059
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1060
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 1059
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 2463
    return-void
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 2

    .prologue
    .line 3143
    const/4 v0, 0x0

    .line 3144
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3145
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3147
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2299
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 1156
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1870
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1991
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1932
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2287
    return-void
.end method

.method public setOnEcbModeExitResponseGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1495
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1496
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1987
    return-void
.end method

.method public setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1302
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1303
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1911
    return-void
.end method

.method public setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 2974
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2347
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1939
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone:setPreferredNetworkType networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " default phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 1942
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Landroid/content/SharedPreferences;

    .line 1943
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:I

    .line 1944
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredNetworkType() mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    if-nez v0, :cond_2

    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1951
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:I

    if-eq v0, v6, :cond_0

    .line 1952
    iget p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:I

    .line 1953
    const-string v0, "PHONE"

    const-string v3, "Notice, the network mode is set from Engineering Mode, using EM settings "

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1956
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1969
    :cond_1
    :goto_1
    return-void

    .line 1948
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode_2"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1958
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:I

    if-ne v0, v5, :cond_5

    move v0, v1

    .line 1959
    :goto_2
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 1960
    if-ne v0, v2, :cond_4

    .line 1961
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1959
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1963
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .line 1966
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1272
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 1273
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeminiPhone:setPreferredNetworkTypeGemini networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Landroid/content/SharedPreferences;

    .line 1275
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    const/16 v4, 0xff

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:I

    .line 1276
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1279
    if-nez p3, :cond_1

    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode_2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1284
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1287
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1288
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:I

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 1289
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1290
    if-ne v0, v2, :cond_3

    .line 1291
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1289
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1293
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2

    .line 1296
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkTypeRIL(I)V
    .locals 0

    .prologue
    .line 3045
    return-void
.end method

.method public setRadioMode(I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1085
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->isRadioStatusInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setRadioSIMMode(Landroid/content/Context;I)V

    .line 1088
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aj:Z

    if-eqz v0, :cond_2

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G switch now, setRadioMode later ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    .line 1091
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:I

    .line 1112
    :cond_1
    :goto_0
    return-void

    .line 1093
    :cond_2
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ai:I

    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->W:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetAsRadioOff(I)V

    .line 1095
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    invoke-static {p0, p1, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1098
    if-eqz v0, :cond_5

    .line 1099
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ah:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyExt;->isAutoSwitchDataToEnabledSim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1100
    if-eq p1, v3, :cond_3

    if-ne p1, v5, :cond_1

    .line 1101
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need to auto switch to current enabled SIM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1102
    if-ne p1, v3, :cond_4

    .line 1103
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 1104
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1105
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 1109
    :cond_5
    const-string v0, "Cannot get ConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioPower,power= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GEMINI_SIM_NUM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1117
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1118
    if-eqz p1, :cond_0

    const/16 v0, 0xf

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1124
    :goto_0
    return-void

    .line 1119
    :cond_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v2, v1, :cond_3

    .line 1120
    if-eqz p1, :cond_2

    const/4 v0, 0x7

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    goto :goto_0

    .line 1122
    :cond_3
    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    goto :goto_0
.end method

.method public setRadioPower(ZZ)V
    .locals 1

    .prologue
    .line 1127
    if-eqz p2, :cond_0

    .line 1128
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1132
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method public setRadioPowerOn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1136
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1148
    :goto_0
    return-void

    .line 1140
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()Z

    move-result v0

    .line 1141
    if-eqz v0, :cond_1

    .line 1142
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 1143
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0

    .line 1146
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0
.end method

.method public setSimInsertedState(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimInsertedState["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1077
    if-eqz p2, :cond_0

    .line 1078
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    .line 1082
    :goto_0
    return-void

    .line 1080
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->X:I

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2187
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 2

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2146
    return-void
.end method

.method public setTTYModeGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1450
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1451
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 2034
    return-void
.end method

.method public setUnitTestModeGemini(ZI)V
    .locals 1

    .prologue
    .line 1332
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1333
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1888
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 2994
    return-void
.end method

.method public setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2434
    return-void
.end method

.method public setVtCallWaiting(ZLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 2442
    return-void
.end method

.method public setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2450
    return-void
.end method

.method public startDtmf(C)V
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1834
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1838
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1756
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2219
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1712
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 2421
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1680
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1631
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1632
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 2235
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1728
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1704
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1696
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1623
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1624
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 2259
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1648
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1640
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 2359
    return-void
.end method

.method public unregisterForNeighboringInfoGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1507
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 1508
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2367
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1615
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1616
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 2243
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1608
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 2283
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1491
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 1492
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 2251
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 2459
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1736
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1664
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 2227
    return-void
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1483
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1484
    return-void
.end method

.method public unregisterForSimModeChange(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ae:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1009
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2378
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2379
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1720
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1688
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1672
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 2275
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 2267
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1599
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1600
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 2413
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 2404
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 2396
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 2388
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 2291
    return-void
.end method

.method public unsetOnEcbModeExitResponseGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1499
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1500
    return-void
.end method

.method public updateMobileData(I)V
    .locals 2

    .prologue
    .line 2474
    packed-switch p1, :pswitch_data_0

    .line 2482
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_0

    .line 2483
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2482
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2479
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->V:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2487
    :cond_0
    return-void

    .line 2474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePhoneObject(I)V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->updatePhoneObject(I)V

    .line 586
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 2022
    return-void
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1170
    return-void
.end method

.method public updateSimIndicateStateGemini(I)V
    .locals 1

    .prologue
    .line 1515
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1516
    return-void
.end method

.method public vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->U:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
