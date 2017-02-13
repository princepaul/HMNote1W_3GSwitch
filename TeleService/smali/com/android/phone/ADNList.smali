.class public Lcom/android/phone/ADNList;
.super Lmiui/app/ListActivity;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ADNList$ADNListBroadcastReceiver;,
        Lcom/android/phone/ADNList$QueryHandler;
    }
.end annotation


# static fields
.field protected static final COLUMN_NAMES:[Ljava/lang/String;

.field protected static final DBG:Z = false

.field protected static final DELETE_TOKEN:I = 0x3

.field protected static final EMAIL_COLUMN:I = 0x2

.field protected static final FAIL:I = 0x0

.field protected static final INDEX_COLUMN:I = 0x3

.field protected static final INSERT_TOKEN:I = 0x1

.field protected static final NAME_COLUMN:I = 0x0

.field protected static final NUMBER_COLUMN:I = 0x1

.field protected static final QUERY_TOKEN:I = 0x0

.field protected static final SUCCESS:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "ADNList"

.field protected static final UPDATE_TOKEN:I = 0x2

.field protected static final VIEW_NAMES:[I


# instance fields
.field protected mAirplaneMode:Z

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mEmptyText:Landroid/widget/TextView;

.field protected mInitialSelection:I

.field protected mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const-string v1, "emails"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 110
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 122
    iput-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 124
    iput v1, p0, Lcom/android/phone/ADNList;->mSlotId:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 326
    iput-boolean v1, p0, Lcom/android/phone/ADNList;->mAirplaneMode:Z

    .line 328
    new-instance v0, Lcom/android/phone/ADNList$ADNListBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/ADNList$ADNListBroadcastReceiver;-><init>(Lcom/android/phone/ADNList;Lcom/android/phone/ADNList$1;)V

    iput-object v0, p0, Lcom/android/phone/ADNList;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ADNList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ADNList;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/ADNList;->setAdapter()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ADNList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ADNList;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ADNList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ADNList;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/ADNList;->reQuery()V

    return-void
.end method

.method private displayProgress(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0b029a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 245
    return-void

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/android/phone/ADNList;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b029d

    goto :goto_0

    :cond_1
    const v0, 0x7f0b029b

    goto :goto_0
.end method

.method private displayProgressGemini(Z)Z
    .locals 9
    .param p1, "loading"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    iget v5, p0, Lcom/android/phone/ADNList;->mSlotId:I

    invoke-static {p0, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 369
    .local v1, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b011b

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x5

    if-eqz p1, :cond_2

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v5, v6, v3}, Landroid/view/Window;->setFeatureInt(II)V

    move v3, v4

    .line 385
    .end local v1    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    return v3

    .line 375
    .restart local v1    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v0

    .line 376
    .local v0, "ext":Lcom/mediatek/phone/ext/SettingsExtension;
    iget-object v3, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    const v5, 0x7f0b029b

    invoke-virtual {p0, v5}, Lcom/android/phone/ADNList;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/ADNList;->mSlotId:I

    invoke-virtual {v0, v5, v6}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    .end local v0    # "ext":Lcom/mediatek/phone/ext/SettingsExtension;
    :cond_2
    const/4 v3, -0x2

    goto :goto_1
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 173
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ADNList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    .line 176
    return-void
.end method

.method private reQuery()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 180
    return-void
.end method

.method private registerReceiverMtk()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/phone/ADNList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/ADNList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->newAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 210
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    :goto_0
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 216
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setSelection(I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 220
    :cond_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v0, "ADNList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ADNList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040002

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    sget-object v1, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v4, v5

    sget-object v1, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v4, v6

    sget-object v5, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/ADNList;->mSlotId:I

    .line 134
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->setContentView(I)V

    .line 135
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    .line 136
    new-instance v1, Lcom/android/phone/ADNList$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/ADNList$QueryHandler;-><init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 139
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/ADNList;->registerReceiverMtk()V

    .line 145
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Lmiui/app/ListActivity;->onDestroy()V

    .line 340
    iget-object v0, p0, Lcom/android/phone/ADNList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lmiui/app/ListActivity;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 151
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lmiui/app/ListActivity;->onStop()V

    .line 156
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 159
    :cond_0
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 309
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v1, 0x7f0b03d1

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 311
    const-string v1, "OK"

    new-instance v2, Lcom/android/phone/ADNList$1;

    invoke-direct {v2, p0}, Lcom/android/phone/ADNList$1;-><init>(Lcom/android/phone/ADNList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 316
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 317
    return-void
.end method
