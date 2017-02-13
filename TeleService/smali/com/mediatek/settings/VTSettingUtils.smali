.class public Lcom/mediatek/settings/VTSettingUtils;
.super Ljava/lang/Object;
.source "VTSettingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/VTSettingUtils$Listener;,
        Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBGEM:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "VTSettingUtils"

.field private static final VT_SETTINGS_UTILS:Lcom/mediatek/settings/VTSettingUtils;


# instance fields
.field public mAutoDropBack:Z

.field public mEnableBackCamera:Z

.field private mListener:Lcom/mediatek/settings/VTSettingUtils$Listener;

.field public mPeerBigger:Z

.field public mPicToReplaceLocal:Ljava/lang/String;

.field public mPicToReplacePeer:Ljava/lang/String;

.field private mReplacePeerBitmap:Landroid/graphics/Bitmap;

.field public mRingOnlyOnce:Z

.field public mShowLocalMO:Z

.field public mShowLocalMT:Ljava/lang/String;

.field public mToReplacePeer:Z

.field public mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

.field private mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/mediatek/settings/VTSettingUtils;

    invoke-direct {v0}, Lcom/mediatek/settings/VTSettingUtils;-><init>()V

    sput-object v0, Lcom/mediatek/settings/VTSettingUtils;->VT_SETTINGS_UTILS:Lcom/mediatek/settings/VTSettingUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Lcom/android/services/telephony/common/VTSettingParams;

    invoke-direct {v0}, Lcom/android/services/telephony/common/VTSettingParams;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    .line 81
    new-instance v0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;-><init>(Lcom/mediatek/settings/VTSettingUtils;)V

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/settings/VTSettingUtils;->resetVTSettingToDefaultValue()V

    .line 83
    return-void
.end method

.method public static getInstance()Lcom/mediatek/settings/VTSettingUtils;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mediatek/settings/VTSettingUtils;->VT_SETTINGS_UTILS:Lcom/mediatek/settings/VTSettingUtils;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "VTSettingUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method private updateReplacePeerBitmap(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mReplacePeerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mReplacePeerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mReplacePeerBitmap:Landroid/graphics/Bitmap;

    .line 443
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mReplacePeerBitmap:Landroid/graphics/Bitmap;

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-static {p1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mReplacePeerBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private updateVTSettingParams()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    iget-object v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplaceLocal:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    iget-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTSettingParams;->mEnableBackCamera:Z

    .line 422
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    iget-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTSettingParams;->mPeerBigger:Z

    .line 423
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    iget-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMO:Z

    .line 424
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    iget-object v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMT:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    iget-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTSettingParams;->mAutoDropBack:Z

    .line 426
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    iget-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    iput-boolean v1, v0, Lcom/android/services/telephony/common/VTSettingParams;->mToReplacePeer:Z

    .line 427
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    iget-object v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplacePeer:Ljava/lang/String;

    .line 428
    return-void
.end method


# virtual methods
.method public getListener()Lcom/mediatek/settings/VTSettingUtils$Listener;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mListener:Lcom/mediatek/settings/VTSettingUtils$Listener;

    return-object v0
.end method

.method public getReplacePeerBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mReplacePeerBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVtSettingParams()Lcom/android/services/telephony/common/VTSettingParams;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    return-object v0
.end method

.method public pushVTSettingParams(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 175
    const-string v0, "pushVTSettingParams()..."

    invoke-static {v0}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/VTSettingUtils;->updateVTSettingState(I)V

    .line 180
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VTSettingUtils;->updateReplacePeerBitmap(I)V

    .line 182
    invoke-direct {p0}, Lcom/mediatek/settings/VTSettingUtils;->updateVTSettingParams()V

    .line 183
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mListener:Lcom/mediatek/settings/VTSettingUtils$Listener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mListener:Lcom/mediatek/settings/VTSettingUtils$Listener;

    iget-object v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTSettingParams:Lcom/android/services/telephony/common/VTSettingParams;

    iget-object v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mReplacePeerBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/VTSettingUtils$Listener;->pushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V

    .line 186
    :cond_0
    return-void
.end method

.method public resetVTSettingToDefaultValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    .line 88
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    .line 89
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    .line 90
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mRingOnlyOnce:Z

    .line 92
    iput-boolean v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    .line 93
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    .line 94
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setListener(Lcom/mediatek/settings/VTSettingUtils$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/settings/VTSettingUtils$Listener;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/mediatek/settings/VTSettingUtils;->mListener:Lcom/mediatek/settings/VTSettingUtils$Listener;

    .line 413
    return-void
.end method

.method public updateVTEngineerModeValues()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 243
    const-string v3, "updateVTEngineerModeValues()..."

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "emContext":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string v4, "com.mediatek.engineermode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneGlobals;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    const-string v3, "engineermode_vt_preferences"

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 260
    .local v2, "sp":Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    .line 262
    const-string v3, "updateVTEngineerModeValues() : can not find \'engineermode_vt_preferences\'..."

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 398
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "updateVTEngineerModeValues() : can not find \'com.mediatek.engineermode\'..."

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "working_mode"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode:Ljava/lang/String;

    .line 268
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "working_mode_detail"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode_detail:Ljava/lang/String;

    .line 269
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_audio_channel_adapt"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_audio_channel_adapt:Ljava/lang/String;

    .line 270
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_video_channel_adapt"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_adapt:Ljava/lang/String;

    .line 271
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_video_channel_reverse"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_reverse:Ljava/lang/String;

    .line 272
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_multiplex_level"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_multiplex_level:Ljava/lang/String;

    .line 273
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_video_codec_preference"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_codec_preference:Ljava/lang/String;

    .line 274
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_use_wnsrp"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_use_wnsrp:Ljava/lang/String;

    .line 275
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "config_terminal_type"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_terminal_type:Ljava/lang/String;

    .line 276
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "auto_answer"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->auto_answer:Z

    .line 277
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "auto_answer_time"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->auto_answer_time:Ljava/lang/String;

    .line 278
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "debug_message"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->debug_message:Z

    .line 279
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "h223_raw_data"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->h223_raw_data:Z

    .line 280
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_to_file"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_to_file:Z

    .line 281
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "h263_only"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->h263_only:Z

    .line 282
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "get_raw_data"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->get_raw_data:Z

    .line 284
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_0_value"

    const/16 v5, 0x18

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_0_value:I

    .line 285
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_1_value"

    const/16 v5, 0x18

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_1_value:I

    .line 286
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_2_value"

    const/16 v5, 0x18

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_2_value:I

    .line 287
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    const-string v4, "log_filter_tag_3_value"

    const/16 v5, 0x18

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_3_value:I

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.working_mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.working_mode_detail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode_detail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_audio_channel_adapt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_audio_channel_adapt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_video_channel_adapt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_adapt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_video_channel_reverse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_reverse:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_multiplex_level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_multiplex_level:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_video_codec_preference = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_codec_preference:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_use_wnsrp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_use_wnsrp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.config_terminal_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_terminal_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.auto_answer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->auto_answer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.auto_answer_time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->auto_answer_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.debug_message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->debug_message:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.h223_raw_data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->h223_raw_data:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_to_file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_to_file:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.h263_only = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->h263_only:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.get_raw_data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->get_raw_data:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_0_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_0_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_1_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_1_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_2_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_2_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - mVTEngineerModeValues.log_filter_tag_3_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_3_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 352
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode_detail:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v6, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 354
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_audio_channel_adapt:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v7, v6, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 355
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_adapt:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v7, v7, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 356
    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_reverse:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 357
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_multiplex_level:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v7, v8, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 358
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_codec_preference:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v7, v9, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 359
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_use_wnsrp:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 360
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-object v5, v5, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_terminal_type:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 362
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->get_raw_data:Z

    if-eqz v3, :cond_1

    .line 363
    invoke-static {v8, v6, v7}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 364
    invoke-static {v9, v6, v7}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 365
    const/4 v3, 0x6

    invoke-static {v3, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 372
    :goto_1
    invoke-static {v8, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 374
    invoke-static {v9, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 376
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->debug_message:Z

    if-eqz v3, :cond_2

    .line 377
    const/4 v3, 0x5

    invoke-static {v3, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 382
    :goto_2
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_to_file:Z

    if-eqz v3, :cond_3

    .line 383
    const/4 v3, 0x7

    invoke-static {v3, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 388
    :goto_3
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget v3, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_0_value:I

    invoke-static {v10, v6, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 389
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget v3, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_1_value:I

    invoke-static {v10, v7, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 390
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget v4, v4, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_2_value:I

    invoke-static {v10, v3, v4}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 391
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget v3, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_3_value:I

    invoke-static {v10, v8, v3}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 393
    iget-object v3, p0, Lcom/mediatek/settings/VTSettingUtils;->mVTEngineerModeValues:Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;

    iget-boolean v3, v3, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->h263_only:Z

    if-eqz v3, :cond_4

    .line 394
    const/16 v3, 0x9

    invoke-static {v3, v7, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto/16 :goto_0

    .line 367
    :cond_1
    invoke-static {v8, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 368
    invoke-static {v9, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    .line 369
    const/4 v3, 0x6

    invoke-static {v3, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto :goto_1

    .line 379
    :cond_2
    const/4 v3, 0x5

    invoke-static {v3, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto :goto_2

    .line 385
    :cond_3
    const/4 v3, 0x7

    invoke-static {v3, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto :goto_3

    .line 396
    :cond_4
    const/16 v3, 0x9

    invoke-static {v3, v6, v6}, Lcom/mediatek/vt/VTManager;->setEM(III)V

    goto/16 :goto_0
.end method

.method public updateVTSettingState(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 100
    const-string v1, "updateVTSettingState()..."

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.phone_preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 108
    const-string v1, "updateVTEngineerModeValues() : can not find \'com.android.phone_preferences\'..."

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button_vt_replace_expand_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button_vt_enable_back_camera_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button_vt_peer_bigger_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button_vt_mo_local_video_display_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button_vt_mt_local_video_display_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ring_only_once_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mRingOnlyOnce:Z

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button_vt_auto_dropback_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button_vt_enable_peer_replace_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button_vt_replace_peer_expand_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mPicToReplaceLocal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mEnableBackCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mPeerBigger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mShowLocalMO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mShowLocalMT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mAutoDropBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mRingOnlyOnce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mRingOnlyOnce:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mToReplacePeer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mPicToReplacePeer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 151
    const-string v1, "updateVTSettingState() : call VTManager.setPeerView() start !"

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplacePeer:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v1, :cond_1

    .line 155
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setPeerView(ILjava/lang/String;)V

    .line 167
    :goto_1
    const-string v1, "updateVTSettingState() : call VTManager.setPeerView() end !"

    invoke-static {v1}, Lcom/mediatek/settings/VTSettingUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setPeerView(ILjava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v1, :cond_3

    .line 161
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v1

    invoke-static {p1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setPeerView(ILjava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v1

    invoke-static {p1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setPeerView(ILjava/lang/String;)V

    goto :goto_1
.end method
