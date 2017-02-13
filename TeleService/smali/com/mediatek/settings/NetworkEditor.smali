.class public Lcom/mediatek/settings/NetworkEditor;
.super Landroid/app/Activity;
.source "NetworkEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/NetworkEditor$NetworkInfo;,
        Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;
    }
.end annotation


# static fields
.field private static final BUTTON_NETWORK_ID_KEY:Ljava/lang/String; = "network_id_key"

.field private static final BUTTON_PRIORITY_KEY:Ljava/lang/String; = "priority_key"

.field private static final DIALOG_NETWORK_ID:I = 0x0

.field private static final INDEX_2G:I = 0x0

.field private static final INDEX_2G_3G:I = 0x3

.field private static final INDEX_2G_3G_4G:I = 0x6

.field private static final INDEX_2G_4G:I = 0x4

.field private static final INDEX_3G:I = 0x1

.field private static final INDEX_3G_4G:I = 0x5

.field private static final INDEX_4G:I = 0x2

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "key_network_type"

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_DISCARD:I = 0x3

.field private static final MENU_SAVE:I = 0x2

.field public static final PLMN_ADD:Ljava/lang/String; = "plmn_add"

.field public static final PLMN_CODE:Ljava/lang/String; = "plmn_code"

.field public static final PLMN_NAME:Ljava/lang/String; = "plmn_name"

.field public static final PLMN_PRIORITY:Ljava/lang/String; = "plmn_priority"

.field public static final PLMN_SERVICE:Ljava/lang/String; = "plmn_service"

.field public static final PLMN_SIZE:Ljava/lang/String; = "plmn_size"

.field public static final PLMN_SLOT:Ljava/lang/String; = "plmn_slot"

.field public static final RESULT_DELETE:I = 0xc8

.field public static final RESULT_MODIFY:I = 0x64

.field public static final RIL_2G:I = 0x1

.field public static final RIL_2G_3G:I = 0x5

.field public static final RIL_2G_3G_4G:I = 0xd

.field public static final RIL_2G_4G:I = 0x9

.field public static final RIL_3G:I = 0x4

.field public static final RIL_3G_4G:I = 0xc

.field public static final RIL_4G:I = 0x8

.field public static final RIL_NONE:I = 0x0

.field public static final RIL_NONE2:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Settings/NetworkEditor"

.field private static final TAG_NETWORK_EDITOR:Ljava/lang/String; = "network_editor"


# instance fields
.field private mAct:I

.field private mActSupport:Z

.field private mAirplaneModeEnabled:Z

.field private mDualSimMode:I

.field private mIdDialog:Landroid/app/AlertDialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkId:Landroid/preference/Preference;

.field private mNetworkIdListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkIdText:Landroid/widget/EditText;

.field private mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

.field private mNetworkMode:Landroid/preference/Preference;

.field private mNotSet:Ljava/lang/String;

.field private mPLMNName:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPriority:Landroid/preference/EditTextPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    .line 85
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    .line 86
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/Preference;

    .line 88
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkEditor;->mActSupport:Z

    .line 97
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    .line 102
    new-instance v0, Lcom/mediatek/settings/NetworkEditor$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkEditor$1;-><init>(Lcom/mediatek/settings/NetworkEditor;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 116
    new-instance v0, Lcom/mediatek/settings/NetworkEditor$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkEditor$2;-><init>(Lcom/mediatek/settings/NetworkEditor;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Lcom/mediatek/settings/NetworkEditor$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkEditor$3;-><init>(Lcom/mediatek/settings/NetworkEditor;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdListener:Landroid/content/DialogInterface$OnClickListener;

    .line 546
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/NetworkEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkEditor;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/settings/NetworkEditor;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mediatek/settings/NetworkEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/NetworkEditor;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/NetworkEditor;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/settings/NetworkEditor;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/NetworkEditor;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/NetworkEditor;Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkEditor;->createNetworkTypeIntent(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/NetworkEditor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/NetworkEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    iget v0, p0, Lcom/mediatek/settings/NetworkEditor;->mSlotId:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/NetworkEditor;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/NetworkEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/NetworkEditor;)Lcom/mediatek/settings/NetworkEditor$NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/settings/NetworkEditor;Lcom/mediatek/settings/NetworkEditor$NetworkInfo;)Lcom/mediatek/settings/NetworkEditor$NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/NetworkEditor;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mediatek/settings/NetworkEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/NetworkEditor;Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkEditor;
    .param p1, "x1"    # Landroid/preference/EditTextPreference;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    return-object p1
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 408
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    :cond_0
    const-string p1, ""

    .line 411
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 416
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    .line 419
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private commitPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 499
    const-string v2, "com.android.phone_preferences"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/NetworkEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 501
    .local v1, "mPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 502
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 504
    return-void
.end method

.method public static covertApNW2Ril(I)I
    .locals 1
    .param p0, "modeIndex"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 392
    :goto_0
    return v0

    .line 369
    :pswitch_0
    const/4 v0, 0x1

    .line 370
    goto :goto_0

    .line 372
    :pswitch_1
    const/4 v0, 0x4

    .line 373
    goto :goto_0

    .line 375
    :pswitch_2
    const/16 v0, 0x8

    .line 376
    goto :goto_0

    .line 378
    :pswitch_3
    const/4 v0, 0x5

    .line 379
    goto :goto_0

    .line 381
    :pswitch_4
    const/16 v0, 0x9

    .line 382
    goto :goto_0

    .line 384
    :pswitch_5
    const/16 v0, 0xc

    .line 385
    goto :goto_0

    .line 387
    :pswitch_6
    const/16 v0, 0xd

    .line 388
    goto :goto_0

    .line 367
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
    .end packed-switch
.end method

.method public static covertRilNW2Ap(I)I
    .locals 6
    .param p0, "rilNW"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 341
    const/4 v3, 0x0

    .line 342
    .local v3, "result":I
    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_1

    move v0, v2

    .line 343
    .local v0, "is2GEnable":Z
    :goto_0
    and-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_2

    move v1, v2

    .line 344
    .local v1, "is3GEnable":Z
    :goto_1
    and-int/lit8 v5, p0, 0x8

    if-eqz v5, :cond_3

    .line 346
    .local v2, "is4GEnable":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 347
    const/4 v3, 0x6

    .line 362
    :cond_0
    :goto_3
    return v3

    .end local v0    # "is2GEnable":Z
    .end local v1    # "is3GEnable":Z
    .end local v2    # "is4GEnable":Z
    :cond_1
    move v0, v4

    .line 342
    goto :goto_0

    .restart local v0    # "is2GEnable":Z
    :cond_2
    move v1, v4

    .line 343
    goto :goto_1

    .restart local v1    # "is3GEnable":Z
    :cond_3
    move v2, v4

    .line 344
    goto :goto_2

    .line 348
    .restart local v2    # "is4GEnable":Z
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 349
    const/4 v3, 0x5

    goto :goto_3

    .line 350
    :cond_5
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    .line 351
    const/4 v3, 0x4

    goto :goto_3

    .line 352
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    .line 353
    const/4 v3, 0x3

    goto :goto_3

    .line 354
    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    .line 355
    const/4 v3, 0x2

    goto :goto_3

    .line 356
    :cond_8
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    if-nez v2, :cond_9

    .line 357
    const/4 v3, 0x1

    goto :goto_3

    .line 358
    :cond_9
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 359
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private createNetworkInfo(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 396
    const-string v0, "plmn_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mPLMNName:Ljava/lang/String;

    .line 397
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkEditor;->updateNetWorkInfo(Landroid/content/Intent;)V

    .line 398
    const-string v0, "plmn_slot"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor;->mSlotId:I

    .line 399
    const-string v0, "plmn_service"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor;->mAct:I

    .line 402
    iget v0, p0, Lcom/mediatek/settings/NetworkEditor;->mAct:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/settings/NetworkEditor;->mAct:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 403
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor;->mAct:I

    .line 405
    :cond_1
    return-void
.end method

.method private createNetworkTypeIntent(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 583
    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 584
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Settings/NetworkEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNetworkTypeIntent(): mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/NetworkEditor;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAct = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/NetworkEditor;->mAct:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v1, "plmn_slot"

    iget v2, p0, Lcom/mediatek/settings/NetworkEditor;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    const-string v1, "plmn_service"

    iget v2, p0, Lcom/mediatek/settings/NetworkEditor;->mAct:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    return-object v0
.end method

.method private genNetworkInfo(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 299
    const-string v3, "plmn_name"

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mPLMNName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/settings/NetworkEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v3, "plmn_code"

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "priority":I
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "plmn_size"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 304
    .local v2, "size":I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "plmn_add"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    if-le v1, v2, :cond_0

    .line 310
    move v1, v2

    .line 317
    :cond_0
    :goto_1
    const-string v3, "plmn_priority"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v3, "priority_key"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/settings/NetworkEditor;->commitPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :try_start_1
    const-string v3, "plmn_service"

    iget v4, p0, Lcom/mediatek/settings/NetworkEditor;->mAct:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :goto_2
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Settings/NetworkEditor"

    const-string v4, "parse value of basband error"

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    if-lt v1, v2, :cond_0

    .line 314
    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    .line 324
    :catch_1
    move-exception v0

    .line 325
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "plmn_service"

    invoke-static {v5}, Lcom/mediatek/settings/NetworkEditor;->covertApNW2Ril(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method private setRemovedNetwork()V
    .locals 2

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/PLMNListPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xc8

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/settings/NetworkEditor;->setResult(ILandroid/content/Intent;)V

    .line 332
    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkEditor;->genNetworkInfo(Landroid/content/Intent;)V

    .line 333
    return-void
.end method

.method private setScreenEnabled()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, "isShouldEnabled":Z
    const/4 v5, -0x1

    invoke-static {v5}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getCallState(I)I

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 426
    .local v1, "isIdle":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    if-eqz v5, :cond_1

    move v2, v3

    .line 427
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "network_editor"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 428
    .local v0, "fragment":Landroid/preference/PreferenceFragment;
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 429
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->invalidateOptionsMenu()V

    .line 430
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/Preference;

    iget-boolean v6, p0, Lcom/mediatek/settings/NetworkEditor;->mActSupport:Z

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 431
    return-void

    .end local v0    # "fragment":Landroid/preference/PreferenceFragment;
    .end local v1    # "isIdle":Z
    :cond_0
    move v1, v4

    .line 425
    goto :goto_0

    .restart local v1    # "isIdle":Z
    :cond_1
    move v2, v4

    .line 426
    goto :goto_1

    .restart local v0    # "fragment":Landroid/preference/PreferenceFragment;
    :cond_2
    move v3, v4

    .line 430
    goto :goto_2
.end method

.method private updateNetWorkInfo(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 511
    const-string v3, "Settings/NetworkEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---updateNetWorkInfo-- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v5}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v5}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v5}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetWorkMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    const-string v4, "plmn_code"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setNetworkId(Ljava/lang/String;)V

    .line 517
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/NetworkEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    # getter for: Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I
    invoke-static {v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->access$1500(Lcom/mediatek/settings/NetworkEditor$NetworkInfo;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 520
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    const-string v4, "plmn_priority"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setPriority(I)V

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetWorkMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 529
    const-string v3, "plmn_service"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 531
    .local v0, "act":I
    const-string v3, "Settings/NetworkEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "act = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "plmn_add"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 533
    if-eqz v0, :cond_4

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/settings/NetworkEditor;->mActSupport:Z

    .line 535
    :cond_2
    const-string v1, "Settings/NetworkEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/settings/NetworkEditor;->mActSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-static {v0}, Lcom/mediatek/settings/NetworkEditor;->covertRilNW2Ap(I)I

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setNetWorkMode(Ljava/lang/String;)V

    .line 539
    .end local v0    # "act":I
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v2}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetWorkMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    return-void

    .restart local v0    # "act":I
    :cond_4
    move v1, v2

    .line 533
    goto :goto_0
.end method

.method private updateNetworkType(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 591
    const-string v2, "plmn_service"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 592
    .local v0, "act":I
    invoke-static {v0}, Lcom/mediatek/settings/NetworkEditor;->covertRilNW2Ap(I)I

    move-result v1

    .line 593
    .local v1, "index":I
    const-string v2, "Settings/NetworkEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkType: act = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setNetWorkMode(Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetWorkMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 596
    return-void
.end method

.method private validateAndSetResult()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/PLMNListPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/settings/NetworkEditor;->setResult(ILandroid/content/Intent;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkEditor;->genNetworkInfo(Landroid/content/Intent;)V

    .line 296
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->validate()V

    .line 480
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 486
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 436
    const-string v0, "Settings/NetworkEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 438
    const-string v0, "plmn_service"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor;->mAct:I

    .line 439
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plmn_service"

    iget v2, p0, Lcom/mediatek/settings/NetworkEditor;->mAct:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkEditor;->setIntent(Landroid/content/Intent;)V

    .line 441
    invoke-direct {p0, p3}, Lcom/mediatek/settings/NetworkEditor;->updateNetworkType(Landroid/content/Intent;)V

    .line 443
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    if-nez p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/NetworkEditor$NetworkEditorFragment;-><init>(Lcom/mediatek/settings/NetworkEditor;)V

    const-string v3, "network_editor"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 157
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 447
    if-nez p1, :cond_1

    .line 448
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    .line 449
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 453
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 454
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    .line 460
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 461
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    .line 463
    :cond_1
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 246
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plmn_add"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const v0, 0x10403e8

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 249
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0b0289

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 250
    const/4 v0, 0x3

    const/high16 v1, 0x1040000

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 251
    return v3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 241
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 288
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->finish()V

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 275
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkEditor;->setRemovedNetwork()V

    goto :goto_0

    .line 278
    :sswitch_2
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkEditor;->validateAndSetResult()V

    goto :goto_0

    .line 283
    :sswitch_3
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->finish()V

    .line 284
    const/4 v0, 0x1

    goto :goto_1

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, "isShouldEnabled":Z
    const/4 v5, -0x1

    invoke-static {v5}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getCallState(I)I

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 258
    .local v1, "isIdle":Z
    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v5, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    if-eqz v5, :cond_3

    move v2, v3

    .line 259
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v0, v3

    .line 260
    .local v0, "isEmpty":Z
    :goto_2
    if-eqz p1, :cond_1

    .line 261
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 262
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "plmn_add"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 263
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 268
    :cond_1
    :goto_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .end local v0    # "isEmpty":Z
    .end local v1    # "isIdle":Z
    :cond_2
    move v1, v4

    .line 257
    goto :goto_0

    .restart local v1    # "isIdle":Z
    :cond_3
    move v2, v4

    .line 258
    goto :goto_1

    :cond_4
    move v0, v4

    .line 259
    goto :goto_2

    .restart local v0    # "isEmpty":Z
    :cond_5
    move v3, v4

    .line 263
    goto :goto_3

    .line 265
    :cond_6
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    :goto_5
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_7
    move v3, v4

    goto :goto_5
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkEditor;->createNetworkInfo(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    .line 228
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkEditor;->setScreenEnabled()V

    .line 233
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 491
    return-void
.end method

.method public validate()V
    .locals 4

    .prologue
    .line 467
    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 468
    .local v0, "len":I
    const/4 v1, 0x1

    .line 469
    .local v1, "state":Z
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/4 v2, 0x6

    if-le v0, v2, :cond_1

    .line 470
    :cond_0
    const/4 v1, 0x0

    .line 472
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 473
    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 475
    :cond_2
    return-void
.end method
