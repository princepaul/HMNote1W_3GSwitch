.class public Lcom/android/phone/ExportContactsToSim;
.super Landroid/app/Activity;
.source "ExportContactsToSim.java"


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static final CONTACTS_EXPORTED:I = 0x1

.field private static final FAILURE:I = 0x0

.field private static final NO_CONTACTS:I = 0x2

.field private static final SIM_INDEX:Ljava/lang/String; = "sim_index"

.field private static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExportContactsToSim"


# instance fields
.field private mEmptyText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mResult:I

.field private mSimContactsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "emails"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ExportContactsToSim;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/ExportContactsToSim;->mResult:I

    .line 60
    iput-boolean v1, p0, Lcom/android/phone/ExportContactsToSim;->mIsForeground:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/phone/ExportContactsToSim;->mSimContactsLoaded:Z

    .line 204
    new-instance v0, Lcom/android/phone/ExportContactsToSim$3;

    invoke-direct {v0, p0}, Lcom/android/phone/ExportContactsToSim$3;-><init>(Lcom/android/phone/ExportContactsToSim;)V

    iput-object v0, p0, Lcom/android/phone/ExportContactsToSim;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ExportContactsToSim;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/ExportContactsToSim;->getContactsContentCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ExportContactsToSim;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/phone/ExportContactsToSim;->mResult:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/ExportContactsToSim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/phone/ExportContactsToSim;->mResult:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/ExportContactsToSim;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/phone/ExportContactsToSim;->mSimContactsLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/ExportContactsToSim;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/phone/ExportContactsToSim;->mSimContactsLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/ExportContactsToSim;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/ExportContactsToSim;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ExportContactsToSim;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/ExportContactsToSim;->getContactIdFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ExportContactsToSim;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/ExportContactsToSim;->getDataCursorRelatedToId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ExportContactsToSim;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/ExportContactsToSim;->populateContactDataFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/ExportContactsToSim;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/ExportContactsToSim;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/ExportContactsToSim;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method private displayProgress(Z)V
    .locals 3
    .param p1, "loading"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0b057f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 202
    return-void

    .line 199
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private doExportToSim()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/ExportContactsToSim;->displayProgress(Z)V

    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/ExportContactsToSim$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ExportContactsToSim$1;-><init>(Lcom/android/phone/ExportContactsToSim;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method

.method private getContactIdFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "contactsCursor"    # Landroid/database/Cursor;

    .prologue
    .line 134
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "id":Ljava/lang/String;
    return-object v0
.end method

.method private getContactsContentCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 125
    .local v1, "phoneBookContentUri":Landroid/net/Uri;
    const-string v3, "has_phone_number=\'1\'"

    .line 128
    .local v3, "recordsWithPhoneNumberOnly":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    .local v6, "contactsCursor":Landroid/database/Cursor;
    return-object v6
.end method

.method private getDataCursorRelatedToId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    .local v6, "dataCursor":Landroid/database/Cursor;
    return-object v6
.end method

.method private getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getAdnUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private populateContactDataFromCursor(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/phone/ExportContactsToSim;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 150
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 151
    const-string v8, "ExportContactsToSim"

    const-string v9, " populateContactDataFromCursor: uri is null, return "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v8, "display_name"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, "nameIdx":I
    const-string v8, "data1"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, "phoneIdx":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 162
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "rawNumber":Ljava/lang/String;
    invoke-static {v5}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "number":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "tag"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v8, "number"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v8, "ExportContactsToSim"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    .local v0, "contactUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 172
    const-string v8, "ExportContactsToSim"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to export contact to SIM for name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/ExportContactsToSim;->mResult:I

    goto/16 :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-boolean v1, p0, Lcom/android/phone/ExportContactsToSim;->mIsForeground:Z

    if-nez v1, :cond_0

    .line 181
    const-string v1, "ExportContactsToSim"

    const-string v2, "The activitiy is not in foreground. Do not display dialog!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 185
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v1, 0x7f0b03d1

    invoke-virtual {p0, v1}, Lcom/android/phone/ExportContactsToSim;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 188
    const-string v1, "OK"

    new-instance v2, Lcom/android/phone/ExportContactsToSim$2;

    invoke-direct {v2, p0}, Lcom/android/phone/ExportContactsToSim$2;-><init>(Lcom/android/phone/ExportContactsToSim;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 75
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/android/phone/ExportContactsToSim;->setContentView(I)V

    .line 76
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/phone/ExportContactsToSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ExportContactsToSim;->mEmptyText:Landroid/widget/TextView;

    .line 77
    invoke-direct {p0}, Lcom/android/phone/ExportContactsToSim;->doExportToSim()V

    .line 78
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ExportContactsToSim;->mIsForeground:Z

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/ExportContactsToSim;->mIsForeground:Z

    .line 84
    return-void
.end method
