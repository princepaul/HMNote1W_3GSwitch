.class public Lcom/mediatek/settings/MultipleSimActivity;
.super Lcom/mediatek/settings/SelectSimCardActivity;
.source "MultipleSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;
    }
.end annotation


# static fields
.field public static final INIT_ARRAY:Ljava/lang/String; = "INIT_ARRAY"

.field public static final INIT_ARRAY_VALUE:Ljava/lang/String; = "INIT_ARRAY_VALUE"

.field public static final INIT_BASE_KEY:Ljava/lang/String; = "INIT_BASE_KEY"

.field public static final INIT_FEATURE_NAME:Ljava/lang/String; = "INIT_FEATURE_NAME"

.field public static final INTENT_KEY:Ljava/lang/String; = "ITEM_TYPE"

.field public static final SUB_TITLE_NAME:Ljava/lang/String; = "sub_title_name"

.field private static final TAG:Ljava/lang/String; = "MultipleSimActivity"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mListEntries:I

.field private mListTitle:I

.field private mListValues:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

.field private final mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

.field private mSimNumbers:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/settings/SelectSimCardActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    .line 74
    new-instance v0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;-><init>(Lcom/mediatek/settings/MultipleSimActivity;Lcom/mediatek/settings/MultipleSimActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    .line 117
    new-instance v0, Lcom/mediatek/settings/MultipleSimActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/MultipleSimActivity$1;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/MultipleSimActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/MultipleSimActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/MultipleSimActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/settings/MultipleSimActivity;->setCropParametersForIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private saveBitMap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    :try_start_0
    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    if-nez v1, :cond_1

    .line 382
    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSimId:I

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 386
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 393
    :cond_0
    :goto_1
    return-void

    .line 384
    :cond_1
    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSimId:I

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setCropParametersForIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 439
    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v0, "aspectX"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string v0, "aspectY"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    const-string v0, "outputX"

    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    const-string v0, "outputY"

    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string v0, "return-data"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    return-void
.end method

.method private showDialogMyPic()V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 396
    iget v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    if-nez v0, :cond_0

    .line 397
    iget v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSimId:I

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTSimId:I

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updatePreferenceEnableState()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v10, "select_sim_card_activity"

    invoke-virtual {v7, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFragment;

    .line 413
    .local v1, "fragment":Landroid/preference/PreferenceFragment;
    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 416
    .local v5, "prefSet":Landroid/preference/PreferenceScreen;
    const/4 v7, -0x1

    invoke-static {v7}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getCallState(I)I

    move-result v7

    if-nez v7, :cond_1

    move v3, v8

    .line 417
    .local v3, "isIdle":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 418
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .local v4, "p":Landroid/preference/Preference;
    move-object v7, v4

    .line 419
    check-cast v7, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    invoke-virtual {v7}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v6

    .line 420
    .local v6, "slotId":I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 421
    const-string v7, "NETWORK_MODE"

    iget-object v10, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 422
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7, v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOn(Lcom/android/internal/telephony/Phone;I)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 426
    :goto_3
    invoke-virtual {v4}, Landroid/preference/Preference;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 427
    instance-of v7, v4, Landroid/preference/ListPreference;

    if-eqz v7, :cond_0

    .line 428
    check-cast v4, Landroid/preference/ListPreference;

    .end local v4    # "p":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 429
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 417
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "isIdle":Z
    .end local v6    # "slotId":I
    :cond_1
    move v3, v9

    .line 416
    goto :goto_0

    .restart local v2    # "i":I
    .restart local v3    # "isIdle":Z
    .restart local v4    # "p":Landroid/preference/Preference;
    .restart local v6    # "slotId":I
    :cond_2
    move v7, v9

    .line 422
    goto :goto_2

    .line 424
    :cond_3
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7, v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->isRadioOn(Lcom/android/internal/telephony/Phone;I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 436
    .end local v4    # "p":Landroid/preference/Preference;
    .end local v6    # "slotId":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult: requestCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resultCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 332
    const/4 v5, -0x1

    if-eq p2, v5, :cond_0

    .line 376
    :goto_0
    return-void

    .line 336
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    const-string v5, "data"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 339
    .local v3, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 340
    .local v4, "uri":Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return value is URI, uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 343
    if-eqz v4, :cond_1

    .line 344
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    invoke-direct {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->setCropParametersForIntent(Landroid/content/Intent;)V

    .line 351
    const/16 v5, 0xbce

    :try_start_0
    invoke-virtual {p0, v2, v5}, Lcom/mediatek/settings/MultipleSimActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "MultipleSimActivity"

    const-string v6, "Crop, ActivityNotFoundException !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v5, "MultipleSimActivity"

    const-string v6, "get content data, uri is null!!!~~"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/settings/MultipleSimActivity;->saveBitMap(Landroid/graphics/Bitmap;)V

    .line 360
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogMyPic()V

    goto :goto_0

    .line 365
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .end local v4    # "uri":Landroid/net/Uri;
    :pswitch_1
    const-string v5, "data"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 366
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 367
    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->saveBitMap(Landroid/graphics/Bitmap;)V

    .line 368
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogMyPic()V

    goto :goto_0

    .line 370
    :cond_3
    const-string v5, "MultipleSimActivity"

    const-string v6, "get crop data, bitmap is null!!!~~"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 134
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_FEATURE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    .line 135
    const-string v2, "NETWORK_MODE"

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const v2, 0x1030077

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->setTheme(I)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/settings/SelectSimCardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_BASE_KEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "LIST_TITLE_NAME"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    .line 143
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_ARRAY"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_ARRAY_VALUE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    .line 145
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ITEM_TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "itemType":Ljava/lang/String;
    const-string v2, "ListPreference"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    sget-object v2, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Dialog:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V

    .line 155
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 156
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-static {v2, v3, v4}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 158
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 160
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v2, "NETWORK_MODE"

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/MultipleSimActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 171
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 173
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 175
    :cond_2
    return-void

    .line 149
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    const-string v2, "CheckBoxPreference"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    sget-object v2, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V

    goto :goto_0

    .line 152
    :cond_4
    sget-object v2, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x104000a

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreateDialog]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 326
    .end local v0    # "dialog":Landroid/app/Dialog;
    .local v1, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 265
    .end local v1    # "dialog":Landroid/app/Dialog;
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 325
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move-object v1, v0

    .line 326
    .end local v0    # "dialog":Landroid/app/Dialog;
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 267
    .end local v1    # "dialog":Landroid/app/Dialog;
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dialog":Landroid/app/Dialog;
    move-object v2, v0

    .line 268
    check-cast v2, Landroid/app/ProgressDialog;

    const v3, 0x7f0b01bc

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/MultipleSimActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v2, v0

    .line 269
    check-cast v2, Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v2, v0

    .line 270
    check-cast v2, Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    .line 273
    :sswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0043

    new-instance v4, Lcom/mediatek/settings/MultipleSimActivity$3;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/MultipleSimActivity$3;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/mediatek/settings/MultipleSimActivity$2;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/MultipleSimActivity$2;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v2, v0

    .line 290
    check-cast v2, Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v2, Lcom/mediatek/settings/MultipleSimActivity$4;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/MultipleSimActivity$4;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 304
    :sswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/mediatek/settings/MultipleSimActivity$5;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/MultipleSimActivity$5;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v2, v0

    .line 309
    check-cast v2, Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 310
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v2, Lcom/mediatek/settings/MultipleSimActivity$6;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/MultipleSimActivity$6;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 404
    invoke-super {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->onDestroy()V

    .line 405
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 406
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 408
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 186
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 193
    invoke-super {p0, p1}, Lcom/mediatek/settings/SelectSimCardActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->finish()V

    .line 189
    const/4 v1, 0x1

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 207
    const-string v0, "-----------[onRestoreInstanceState]-----------"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 208
    invoke-super {p0, p1}, Lcom/mediatek/settings/SelectSimCardActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 209
    const-string v0, "LIST_TITLE_NAME"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    .line 210
    const-string v0, "INIT_ARRAY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    .line 211
    const-string v0, "INIT_ARRAY_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->onResume()V

    .line 180
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V

    .line 181
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    const-string v0, "-----------[onSaveInstanceState]-----------"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1}, Lcom/mediatek/settings/SelectSimCardActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    const-string v0, "LIST_TITLE_NAME"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v0, "INIT_ARRAY"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v0, "INIT_ARRAY_VALUE"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method protected setPreference(Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V
    .locals 9
    .param p1, "p"    # Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setPersistent(Z)V

    .line 219
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p1, v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setKey(Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "select_sim_card_activity"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 225
    .local v0, "fragment":Landroid/preference/PreferenceFragment;
    check-cast v0, Landroid/preference/Preference$OnPreferenceChangeListener;

    .end local v0    # "fragment":Landroid/preference/PreferenceFragment;
    invoke-virtual {p1, v0}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 228
    .local v3, "sp":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    sget-object v7, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    if-ne v6, v7, :cond_3

    .line 229
    const-string v6, "button_vt_auto_dropback_key"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    .line 253
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v4, v5

    .line 229
    goto :goto_0

    .line 231
    :cond_3
    iget v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    if-lez v4, :cond_4

    .line 232
    iget v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    invoke-virtual {p1, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setDialogTitle(I)V

    .line 235
    :cond_4
    iget v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    if-lez v4, :cond_5

    .line 236
    iget v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    invoke-virtual {p1, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setEntries(I)V

    .line 238
    :cond_5
    iget v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    if-lez v4, :cond_6

    .line 239
    iget v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    invoke-virtual {p1, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setEntryValues(I)V

    .line 241
    :cond_6
    const-string v4, "0"

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setValue(Ljava/lang/String;)V

    .line 242
    const-string v4, "NETWORK_MODE"

    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mediatek/settings/MultipleSimActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 246
    .local v2, "settingsNetworkMode":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    .line 247
    const/4 v2, 0x0

    .line 249
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settingsNetworkMode init value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method
