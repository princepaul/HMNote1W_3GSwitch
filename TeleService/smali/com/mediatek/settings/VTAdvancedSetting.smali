.class public Lcom/mediatek/settings/VTAdvancedSetting;
.super Landroid/app/Activity;
.source "VTAdvancedSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;
    }
.end annotation


# static fields
.field private static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final BUTTON_VT_AUTO_DROPBACK_KEY:Ljava/lang/String; = "button_vt_auto_dropback_key"

.field private static final BUTTON_VT_CB_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_VT_CF_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_VT_ENABLE_BACK_CAMERA_KEY:Ljava/lang/String; = "button_vt_enable_back_camera_key"

.field private static final BUTTON_VT_ENABLE_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_enable_peer_replace_key"

.field private static final BUTTON_VT_MORE_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_VT_MO_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mo_local_video_display_key"

.field private static final BUTTON_VT_MT_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mt_local_video_display_key"

.field private static final BUTTON_VT_PEER_BIGGER_KEY:Ljava/lang/String; = "button_vt_peer_bigger_key"

.field private static final BUTTON_VT_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_peer_expand_key"

.field private static final BUTTON_VT_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_expand_key"

.field private static final CHECKBOX_RING_ONLY_ONCE:Ljava/lang/String; = "ring_only_once"

.field private static final DBG:Z = true

.field private static final FILE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.phone.files"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VTAdvancedSetting"

.field public static final NAME_PIC_TO_REPLACE_LOCAL_VIDEO_DEFAULT:Ljava/lang/String; = "pic_to_replace_local_video_default"

.field public static final NAME_PIC_TO_REPLACE_LOCAL_VIDEO_USERSELECT:Ljava/lang/String; = "pic_to_replace_local_video_userselect"

.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_DEFAULT:Ljava/lang/String; = "pic_to_replace_peer_video_default"

.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_USERSELECT:Ljava/lang/String; = "pic_to_replace_peer_video_userselect"

.field private static final PHOTO_DATE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static final REQUESTCODE_PICTRUE_CROP:I = 0xbce

.field public static final REQUESTCODE_PICTRUE_PICKED_WITH_DATA:I = 0xbcd

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field public static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field public static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"

.field private static final TAG_VT_ADVANCED_SETTING:Ljava/lang/String; = "vt_advanced_settings"


# instance fields
.field private mButtonCb:Landroid/preference/Preference;

.field private mButtonCf:Landroid/preference/Preference;

.field private mButtonMore:Landroid/preference/Preference;

.field private mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

.field private mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

.field private mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

.field private mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

.field private mButtonVTMtVideo:Landroid/preference/ListPreference;

.field private mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

.field private mButtonVTPeerReplace:Landroid/preference/ListPreference;

.field private mButtonVTReplace:Landroid/preference/ListPreference;

.field private mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

.field private mCroppedPhotoUri:Landroid/net/Uri;

.field private mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mWhichToSave:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    .line 131
    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    .line 132
    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    .line 133
    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    .line 142
    iput-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 152
    new-instance v0, Lcom/mediatek/settings/VTAdvancedSetting$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VTAdvancedSetting$1;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/VTAdvancedSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/VTAdvancedSetting;)Lcom/mediatek/settings/PreCheckForRunning;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mediatek/settings/VTAdvancedSetting;Lcom/mediatek/settings/PreCheckForRunning;)Lcom/mediatek/settings/PreCheckForRunning;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Lcom/mediatek/settings/PreCheckForRunning;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/VTAdvancedSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->findSimId()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/VTAdvancedSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->initVTSettings()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/VTAdvancedSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/settings/VTAdvancedSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    return p1
.end method

.method static synthetic access$1802(Lcom/mediatek/settings/VTAdvancedSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    return p1
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/settings/VTAdvancedSetting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/settings/VTAdvancedSetting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VTAdvancedSetting;->setCropParametersForIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/VTAdvancedSetting;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/VTAdvancedSetting;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    return-object p1
.end method

.method private findSimId()V
    .locals 3

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 618
    .local v0, "simList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 619
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->finish()V

    goto :goto_0
.end method

.method private generateTempCroppedImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    const-string v0, "com.android.phone.files"

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->generateTempCroppedPhotoFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->pathForTempPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static generateTempCroppedPhotoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 313
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 314
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 315
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContactPhoto-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-cropped.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getPicPathDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    const-string v0, "/data/data/com.android.phone/pic_to_replace_local_video_default.vt"

    return-object v0
.end method

.method public static getPicPathDefault2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    const-string v0, "/data/data/com.android.phone/pic_to_replace_peer_video_default.vt"

    return-object v0
.end method

.method public static getPicPathUserselect(I)Ljava/lang/String;
    .locals 2
    .param p0, "slodId"    # I

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.android.phone/pic_to_replace_local_video_userselect_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPicPathUserselect2(I)Ljava/lang/String;
    .locals 2
    .param p0, "slodId"    # I

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.android.phone/pic_to_replace_peer_video_userselect_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initVTSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 566
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 568
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 573
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 578
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    if-eqz v2, :cond_2

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 581
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    const-string v3, "0"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 583
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 586
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 588
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 593
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 596
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 598
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    if-eqz v2, :cond_6

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    const-string v3, "0"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 603
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    if-eqz v2, :cond_7

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    const-string v3, "0"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 609
    .end local v0    # "key":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_8

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 612
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 614
    .end local v0    # "key":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "Settings/VTAdvancedSetting"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private pathForTempPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 307
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 308
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private saveBitMap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 391
    if-eqz p1, :cond_0

    .line 392
    :try_start_0
    iget v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    if-nez v1, :cond_1

    .line 393
    iget v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 397
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - Bitmap.isRecycled() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_1
    return-void

    .line 395
    :cond_1
    iget v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setCropParametersForIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 416
    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v0, "aspectX"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v0, "aspectY"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string v0, "outputX"

    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v0, "outputY"

    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    const-string v0, "output"

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 425
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    const-string v0, "output"

    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 428
    return-void
.end method

.method private setScreenEnabled()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 544
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 545
    .local v2, "simList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget v6, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    if-ne v3, v6, :cond_5

    .line 546
    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v3, p0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOffBySlot(ILandroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v4

    .line 547
    .local v1, "isRadioOn":Z
    :goto_0
    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    if-ltz v3, :cond_1

    move v0, v4

    .line 548
    .local v0, "is3GEnable":Z
    :goto_1
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 549
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 550
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 551
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 552
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 553
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 554
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 555
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 557
    iget-object v6, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 558
    iget-object v6, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 559
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 563
    .end local v0    # "is3GEnable":Z
    .end local v1    # "isRadioOn":Z
    :goto_5
    return-void

    :cond_0
    move v1, v5

    .line 546
    goto :goto_0

    .restart local v1    # "isRadioOn":Z
    :cond_1
    move v0, v5

    .line 547
    goto :goto_1

    .restart local v0    # "is3GEnable":Z
    :cond_2
    move v3, v5

    .line 557
    goto :goto_2

    :cond_3
    move v3, v5

    .line 558
    goto :goto_3

    :cond_4
    move v4, v5

    .line 559
    goto :goto_4

    .line 561
    .end local v0    # "is3GEnable":Z
    .end local v1    # "isRadioOn":Z
    :cond_5
    const-class v3, Lcom/mediatek/settings/CallSettings;

    invoke-static {p0, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->goUpToTopLevelSetting(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_5
.end method

.method private showDialogDefaultPic(Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x2

    .line 431
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 432
    .local v2, "mImg":Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 433
    .local v1, "mBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 434
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, "linear":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 438
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    .local v4, "myBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 440
    const v5, 0x7f0b0038

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 441
    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/settings/VTAdvancedSetting$2;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/VTAdvancedSetting$2;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 450
    .local v3, "myAlertDialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/mediatek/settings/VTAdvancedSetting$3;

    invoke-direct {v5, p0, v2, v1}, Lcom/mediatek/settings/VTAdvancedSetting$3;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 459
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 460
    return-void
.end method

.method private showDialogMyPic()V
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    if-nez v0, :cond_0

    .line 409
    iget v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDialogMyPic(Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x2

    .line 463
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 464
    .local v2, "mImg2":Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 465
    .local v1, "mBitmap2":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 466
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 467
    .local v0, "linear":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 470
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v4, "myBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 472
    const v5, 0x7f0b003a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 473
    const v5, 0x7f0b0043

    new-instance v6, Lcom/mediatek/settings/VTAdvancedSetting$4;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/VTAdvancedSetting$4;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/settings/VTAdvancedSetting$5;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/VTAdvancedSetting$5;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 507
    .local v3, "myAlertDialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/mediatek/settings/VTAdvancedSetting$6;

    invoke-direct {v5, p0, v2, v1}, Lcom/mediatek/settings/VTAdvancedSetting$6;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 516
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 517
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: requestCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 322
    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 387
    :goto_0
    return-void

    .line 326
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 327
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 331
    .local v3, "uri":Landroid/net/Uri;
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 333
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return value is URI, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 337
    if-eqz v3, :cond_2

    .line 338
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.CROP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    invoke-direct {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->setCropParametersForIntent(Landroid/content/Intent;)V

    .line 345
    const/16 v4, 0xbce

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/mediatek/settings/VTAdvancedSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "Settings/VTAdvancedSetting"

    const-string v5, "Crop, ActivityNotFoundException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 350
    :cond_2
    const-string v4, "Settings/VTAdvancedSetting"

    const-string v5, "get content data, uri is null!!!~~"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 356
    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->saveBitMap(Landroid/graphics/Bitmap;)V

    .line 357
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 361
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Settings/VTAdvancedSetting"

    const-string v5, "getBitMapException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_2
    const-string v4, "Settings/VTAdvancedSetting"

    const-string v5, "get crop data, bitmap is null!!!~~"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 368
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    if-nez v3, :cond_5

    .line 369
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCroppedPhotoUri:Landroid/net/Uri;

    .line 372
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    .line 374
    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->saveBitMap(Landroid/graphics/Bitmap;)V

    .line 375
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 379
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v1

    .line 380
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "Settings/VTAdvancedSetting"

    const-string v5, "getBitMapException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :try_start_4
    const-string v4, "Settings/VTAdvancedSetting"

    const-string v5, "get crop data, bitmap is null!!!~~"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 627
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 629
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "vt_advanced_settings"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 630
    .local v0, "fragment":Landroid/preference/PreferenceFragment;
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 631
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestLayout()V

    .line 632
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    if-nez p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;

    invoke-direct {v2}, Lcom/mediatek/settings/VTAdvancedSetting$VTAdvancedSettingFragment;-><init>()V

    const-string v3, "vt_advanced_settings"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 176
    :cond_0
    invoke-direct {p0, p0}, Lcom/mediatek/settings/VTAdvancedSetting;->generateTempCroppedImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCroppedPhotoUri:Landroid/net/Uri;

    .line 177
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 537
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 289
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 291
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->finish()V

    .line 292
    const/4 v1, 0x1

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->setScreenEnabled()V

    .line 284
    return-void
.end method
