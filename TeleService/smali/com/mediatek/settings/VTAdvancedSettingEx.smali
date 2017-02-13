.class public Lcom/mediatek/settings/VTAdvancedSettingEx;
.super Landroid/app/Activity;
.source "VTAdvancedSettingEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;
    }
.end annotation


# static fields
.field public static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final BUTTON_CALL_ADDITIONAL_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_CALL_BAR_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CALL_FWD_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_VT_AUTO_DROPBACK_KEY:Ljava/lang/String; = "button_vt_auto_dropback_key"

.field private static final BUTTON_VT_ENABLE_BACK_CAMERA_KEY:Ljava/lang/String; = "button_vt_enable_back_camera_key"

.field private static final BUTTON_VT_ENABLE_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_enable_peer_replace_key"

.field private static final BUTTON_VT_MO_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mo_local_video_display_key"

.field private static final BUTTON_VT_MT_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mt_local_video_display_key"

.field private static final BUTTON_VT_PEER_BIGGER_KEY:Ljava/lang/String; = "button_vt_peer_bigger_key"

.field private static final BUTTON_VT_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_peer_expand_key"

.field private static final BUTTON_VT_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_expand_key"

.field private static final BUTTON_VT_RINGTONE_KEY:Ljava/lang/String; = "button_vt_ringtone_key"

.field private static final CHECKBOX_RING_ONLY_ONCE:Ljava/lang/String; = "ring_only_once"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VTAdvancedSettingEx"

.field public static final REQUESTCODE_PICTRUE_CROP:I = 0xbce

.field public static final REQUESTCODE_PICTRUE_PICKED_WITH_DATA:I = 0xbcd

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field private static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field private static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"

.field private static final TAG_VT_ADVANCED_SETTING_EX:Ljava/lang/String; = "vt_advanced_settings_ex"


# instance fields
.field private m3GSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonCallAdditional:Landroid/preference/Preference;

.field private mButtonCallBar:Landroid/preference/Preference;

.field private mButtonCallFwd:Landroid/preference/Preference;

.field private mButtonRingOnlyOnce:Landroid/preference/Preference;

.field private mButtonVTAutoDropBack:Landroid/preference/Preference;

.field private mButtonVTEnablePeerReplace:Landroid/preference/Preference;

.field private mButtonVTEnablebackCamer:Landroid/preference/Preference;

.field private mButtonVTMoVideo:Landroid/preference/Preference;

.field private mButtonVTMtVideo:Landroid/preference/Preference;

.field private mButtonVTPeerBigger:Landroid/preference/Preference;

.field private mButtonVTPeerReplace:Landroid/preference/Preference;

.field private mButtonVTReplace:Landroid/preference/Preference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 125
    new-instance v0, Lcom/mediatek/settings/VTAdvancedSettingEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VTAdvancedSettingEx$1;-><init>(Lcom/mediatek/settings/VTAdvancedSettingEx;)V

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->m3GSimList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/VTAdvancedSettingEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$1002(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mTargetPreference:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mediatek/settings/VTAdvancedSettingEx;Lcom/mediatek/settings/PreCheckForRunning;)Lcom/mediatek/settings/PreCheckForRunning;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Lcom/mediatek/settings/PreCheckForRunning;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/VTAdvancedSettingEx;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mediatek/settings/VTAdvancedSettingEx;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSettingEx;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    return-object p1
.end method

.method private getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "Settings/VTAdvancedSettingEx"

    invoke-static {v0, p0}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private setKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 306
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    return-void
.end method

.method private setScreenEnabled()V
    .locals 2

    .prologue
    .line 264
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->m3GSimList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x1

    .line 265
    .local v0, "isEnable":Z
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 268
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 269
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 270
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 271
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 272
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 273
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 274
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 276
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 277
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 278
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonRingOnlyOnce:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    :cond_2
    return-void

    .line 264
    .end local v0    # "isEnable":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 284
    const-string v2, "Settings/VTAdvancedSettingEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",resCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v1, -0x1

    .line 286
    .local v1, "slotId":I
    const/16 v2, 0x64

    if-ne v2, p1, :cond_0

    .line 287
    if-ne v5, p2, :cond_0

    .line 288
    const-string v2, "simId"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 289
    const-string v2, "Settings/VTAdvancedSettingEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mTargetPreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ISVT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    if-eq v1, v5, :cond_0

    .line 293
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mTargetPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-static {v1, v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    .line 297
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;

    invoke-direct {v2}, Lcom/mediatek/settings/VTAdvancedSettingEx$VTAdvancedSettingExFragment;-><init>()V

    const-string v3, "vt_advanced_settings_ex"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 151
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 313
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 253
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 255
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->finish()V

    .line 256
    const/4 v1, 0x1

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 247
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setScreenEnabled()V

    .line 248
    return-void
.end method
