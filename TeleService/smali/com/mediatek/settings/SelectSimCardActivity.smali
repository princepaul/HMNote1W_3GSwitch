.class public Lcom/mediatek/settings/SelectSimCardActivity;
.super Landroid/app/Activity;
.source "SelectSimCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;
    }
.end annotation


# static fields
.field protected static final ALERT_DIALOG:I = 0xc8

.field protected static final ALERT_DIALOG_DEFAULT:I = 0x12c

.field private static final DBG:Z = true

.field public static final EXTRA_SLOTID:Ljava/lang/String; = "slotId"

.field public static final EXTRA_TITLE_NAME:Ljava/lang/String; = "EXTRA_TITME_NAME"

.field public static final LIST_TITLE:Ljava/lang/String; = "LIST_TITLE_NAME"

.field public static final NETWORK_MODE_NAME:Ljava/lang/String; = "NETWORK_MODE"

.field protected static final PROGRESS_DIALOG:I = 0x64

.field protected static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field protected static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field protected static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field protected static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "SelectSimCardActivity"

.field protected static final TAG_SELECT_SIM_CARD_ACTIVITY:Ljava/lang/String; = "select_sim_card_activity"

.field public static final VT_FEATURE_NAME:Ljava/lang/String; = "VT"


# instance fields
.field protected mBaseKey:Ljava/lang/String;

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mFeatureName:Ljava/lang/String;

.field protected mImage:Landroid/widget/ImageView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field protected mIsOnlyShow3GCard:Z

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field protected mTitle:I

.field protected mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

.field protected mVTSimId:I

.field protected mVTWhichToSave:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput v1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mVTSimId:I

    .line 57
    iput v1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mVTWhichToSave:I

    .line 64
    sget-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 66
    iput-boolean v1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIsOnlyShow3GCard:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    new-instance v0, Lcom/mediatek/settings/SelectSimCardActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/SelectSimCardActivity$1;-><init>(Lcom/mediatek/settings/SelectSimCardActivity;)V

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/SelectSimCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SelectSimCardActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->initPreferenceScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/SelectSimCardActivity;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/SelectSimCardActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/settings/SelectSimCardActivity;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SelectSimCardActivity;
    .param p1, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    return-object p1
.end method

.method private initPreferenceScreen()V
    .locals 8

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->getSimInfoRecordList()Ljava/util/List;

    .line 283
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 284
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 285
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 286
    .local v5, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initPreferenceScreen with slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    .line 289
    .local v2, "infoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLteSupport()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    sget-object v7, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Dialog:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    if-ne v6, v7, :cond_0

    const-string v6, "NETWORK_MODE"

    iget-object v7, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 294
    const-string v6, "4G preference screen"

    invoke-virtual {p0, v6}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 295
    iget v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {p0, v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->getItemStatus(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 296
    .local v3, "itemStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    .end local v2    # "infoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-direct {v2, v6, p0, v3}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;-><init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;Ljava/util/List;)V

    .line 301
    .end local v3    # "itemStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v2    # "infoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :goto_1
    iget v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {p0, v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSimIndicator(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimInfoProperty(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;I)V

    .line 302
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 303
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->setPreference(Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V

    goto :goto_0

    .line 299
    :cond_0
    new-instance v2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .end local v2    # "infoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-direct {v2, v6, p0}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;-><init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;)V

    .restart local v2    # "infoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    goto :goto_1

    .line 308
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "infoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v5    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 309
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 311
    .local v4, "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {p0, v4}, Lcom/mediatek/settings/SelectSimCardActivity;->setPreference(Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V

    .line 312
    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    invoke-virtual {v4, v6}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 315
    .end local v1    # "index":I
    .end local v4    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_2
    return-void
.end method


# virtual methods
.method public dealNoSimCardIn()V
    .locals 0

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->finish()V

    .line 337
    return-void
.end method

.method public getNetworkMode(II)I
    .locals 5
    .param p1, "buttonNetworkMode"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 349
    iget-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/mediatek/settings/SelectSimCardActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 351
    .local v1, "settingsNetworkMode":I
    move v0, v1

    .line 352
    .local v0, "modemNetworkMode":I
    if-eq p1, v1, :cond_0

    .line 353
    packed-switch p1, :pswitch_data_0

    .line 379
    const/4 v0, 0x0

    .line 382
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/mediatek/settings/SelectSimCardActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    return v0

    .line 355
    :pswitch_0
    const/4 v0, 0x7

    .line 356
    goto :goto_0

    .line 358
    :pswitch_1
    const/4 v0, 0x6

    .line 359
    goto :goto_0

    .line 361
    :pswitch_2
    const/4 v0, 0x5

    .line 362
    goto :goto_0

    .line 364
    :pswitch_3
    const/4 v0, 0x4

    .line 365
    goto :goto_0

    .line 367
    :pswitch_4
    const/4 v0, 0x3

    .line 368
    goto :goto_0

    .line 370
    :pswitch_5
    const/4 v0, 0x2

    .line 371
    goto :goto_0

    .line 373
    :pswitch_6
    const/4 v0, 0x1

    .line 374
    goto :goto_0

    .line 376
    :pswitch_7
    const/4 v0, 0x0

    .line 377
    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getNetworkModeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 388
    const-string v0, "preferred_network_mode"

    .line 389
    .local v0, "name":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 398
    :goto_0
    :pswitch_0
    return-object v0

    .line 393
    :pswitch_1
    const-string v0, "preferred_network_mode_2"

    .line 394
    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getPreferenceBySlot(I)Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 117
    .restart local v1    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " related preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    move-object v2, v1

    .line 122
    :goto_1
    return-object v2

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getSimInfoRecordList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIsOnlyShow3GCard:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;

    invoke-direct {v1}, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 328
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    return-object v0

    .line 325
    :cond_0
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    goto :goto_0
.end method

.method protected isNoSimInserted()Z
    .locals 3

    .prologue
    .line 126
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 127
    .local v0, "simNum":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 128
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v0, "SelectSimCardActivity"

    invoke-static {v0, p1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 140
    .local v1, "isTablet":Z
    if-eqz v1, :cond_0

    .line 141
    const v2, 0x1020301

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 142
    .local v0, "headerLL":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 148
    .end local v0    # "headerLL":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_3G_CARD_ONLY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIsOnlyShow3GCard:Z

    .line 149
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TITME_NAME"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mTitle:I

    .line 150
    iget v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mTitle:I

    if-eq v2, v5, :cond_1

    .line 151
    iget v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mTitle:I

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->setTitle(I)V

    .line 154
    :cond_1
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 155
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 156
    iget-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/SelectSimCardActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    if-nez p1, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    new-instance v4, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/SelectSimCardActivity$MultiSimFragment;-><init>(Lcom/mediatek/settings/SelectSimCardActivity;)V

    const-string v5, "select_sim_card_activity"

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 166
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 263
    invoke-direct {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->initPreferenceScreen()V

    .line 264
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->isNoSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->dealNoSimCardIn()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/SelectSimCardActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    return-void
.end method

.method protected setPreference(Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .prologue
    .line 340
    return-void
.end method

.method protected setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V
    .locals 0
    .param p1, "type"    # Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 133
    return-void
.end method

.method protected showDialogPic(Ljava/lang/String;I)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "dialog"    # I

    .prologue
    .line 402
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mImage:Landroid/widget/ImageView;

    .line 403
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 404
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    invoke-virtual {p0, p2}, Lcom/mediatek/settings/SelectSimCardActivity;->showDialog(I)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showDialogPic][filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showDialogPic][mBitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showDialogPic][mImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 409
    return-void
.end method
