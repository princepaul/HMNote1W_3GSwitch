.class public Lcom/android/phone/settings/CustomLocationActivity;
.super Lmiui/app/Activity;
.source "CustomLocationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;,
        Lcom/android/phone/settings/CustomLocationActivity$LocationQuery;,
        Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;,
        Lcom/android/phone/settings/CustomLocationActivity$ItemView;
    }
.end annotation


# static fields
.field private static final ADD_CUSTOM_LOCATION:I = 0xa

.field private static final QUERY_TOKEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CustomLocationActivity"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ListView;

.field private mListAdapter:Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

.field private mQueryHandler:Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CustomLocationActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CustomLocationActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CustomLocationActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CustomLocationActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CustomLocationActivity;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 181
    new-instance v0, Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;-><init>(Lcom/android/phone/settings/CustomLocationActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mListAdapter:Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

    .line 182
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/settings/CustomLocationActivity;->mListAdapter:Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    return-void
.end method

.method public static saveCustomLocations(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, "c":Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 121
    .local v9, "rst":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "location"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v8, "obj":Lorg/json/JSONObject;
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    const-string v0, "number"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v0, "location"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 153
    .end local v8    # "obj":Lorg/json/JSONObject;
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-object v9

    .line 142
    .restart local v8    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 143
    .local v7, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v0, "CustomLocationActivity"

    const-string v1, "Save to JSON failed. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 149
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    .line 150
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "CustomLocationActivity"

    const-string v1, "saveCustomLocations DB error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 153
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/settings/CustomLocationActivity$LocationQuery;->COLUMNS:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CustomLocationActivity;->setContentView(I)V

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CustomLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mList:Landroid/widget/ListView;

    .line 55
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mList:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 58
    new-instance v0, Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;-><init>(Lcom/android/phone/settings/CustomLocationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;

    .line 59
    invoke-direct {p0}, Lcom/android/phone/settings/CustomLocationActivity;->startQuery()V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    sget v1, Lmiui/R$attr;->actionBarNewIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    .local v0, "newDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xa

    const v2, 0x7f0b03da

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 190
    return v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "action_edit_custom_location"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v2, p0, Lcom/android/phone/settings/CustomLocationActivity;->mListAdapter:Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {v2}, Lcom/android/phone/settings/CustomLocationActivity$CustomLocationAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 213
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const-string v2, "_id"

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v2, "number"

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "location"

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 205
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 197
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CustomLocationActivity;->finish()V

    goto :goto_0

    .line 200
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "action_add_custom_location"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
