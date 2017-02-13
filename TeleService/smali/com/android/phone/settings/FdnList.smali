.class public Lcom/android/phone/settings/FdnList;
.super Lcom/android/phone/ADNList;
.source "FdnList.java"


# static fields
.field private static final CONTACTS_PICKER_CODE:I = 0xc8

.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final LOG_TAG:Ljava/lang/String; = "FdnList"

.field private static final MENU_ADD:I = 0x1

.field private static final MENU_IMPORT:I = 0x2

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/settings/FdnList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 35
    sget-object v0, Lcom/android/phone/settings/FdnList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    sget-object v0, Lcom/android/phone/settings/FdnList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/settings/FdnList;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    return-void
.end method

.method private addContact()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0, v0}, Lcom/android/phone/settings/FdnList;->addContact(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private addContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/settings/FdnList;->startActivity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    return-void
.end method

.method private editSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v2, p0, Lcom/android/phone/settings/FdnList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/phone/settings/FdnList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/settings/FdnList;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "number":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v4}, Lcom/android/phone/settings/FdnList;->startActivity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startActivity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isAdd"    # Z

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/phone/settings/EditFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    :cond_1
    const-string v1, "is_add"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    iget v1, p0, Lcom/android/phone/settings/FdnList;->mSlotId:I

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 6

    .prologue
    .line 139
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040039

    iget-object v3, p0, Lcom/android/phone/settings/FdnList;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/settings/FdnList;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/settings/FdnList;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    packed-switch p1, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 107
    const/4 v6, 0x0

    .line 108
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v8, ""

    .line 109
    .local v8, "name":Ljava/lang/String;
    const-string v9, ""

    .line 111
    .local v9, "number":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/settings/FdnList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/settings/FdnList;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    :cond_1
    const-string v0, "FdnList"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-eqz v6, :cond_0

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 118
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 123
    if-eqz v6, :cond_3

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_3
    invoke-direct {p0, v8, v9}, Lcom/android/phone/settings/FdnList;->addContact(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :catch_0
    move-exception v7

    .line 120
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v0, "FdnList"

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    if-eqz v6, :cond_0

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 123
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 99
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/settings/FdnList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0b0283

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 63
    const/4 v1, 0x2

    const v2, 0x7f0b0300

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020064

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 65
    return v4
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 134
    invoke-direct {p0, p3}, Lcom/android/phone/settings/FdnList;->editSelected(I)V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 72
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/FdnList;->finish()V

    goto :goto_0

    .line 76
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/settings/FdnList;->addContact()V

    goto :goto_0

    .line 80
    :sswitch_2
    sget-object v1, Lcom/android/phone/settings/FdnList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/16 v2, 0xc8

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/settings/FdnList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/phone/settings/FdnList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/phone/settings/FdnList;->mSlotId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getFdnUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
