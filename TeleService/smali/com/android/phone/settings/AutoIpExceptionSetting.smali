.class public Lcom/android/phone/settings/AutoIpExceptionSetting;
.super Lmiui/app/Activity;
.source "AutoIpExceptionSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_NAME_COLUMN:I = 0x1

.field private static final DATA_NAME:Ljava/lang/String; = "name"

.field private static final DATA_NUMBER:Ljava/lang/String; = "number"

.field private static final MENU_ADD_NUMBERS:I = 0x1

.field private static final MENU_DEL_NUMBERS:I = 0x2

.field private static final PHONE_NUMBER_COLUMN:I


# instance fields
.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mList:Lmiui/widget/EditableListView;

.field private mModeCallBack:Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;

.field private mNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/settings/AutoIpExceptionSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mNumbers:Ljava/util/HashMap;

    .line 268
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/AutoIpExceptionSetting;)Lmiui/widget/EditableListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpExceptionSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mList:Lmiui/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/AutoIpExceptionSetting;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpExceptionSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mNumbers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/AutoIpExceptionSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpExceptionSetting;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->saveNumbers()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/settings/AutoIpExceptionSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpExceptionSetting;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->updateAdapterData()V

    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    .local v6, "result":Z
    if-nez p1, :cond_0

    move v7, v6

    .line 78
    .end local v6    # "result":Z
    .local v7, "result":I
    :goto_0
    return v7

    .line 59
    .end local v7    # "result":I
    .restart local v6    # "result":Z
    :cond_0
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    .line 60
    .local v5, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v5, v10, v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 63
    invoke-static {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 64
    .local v8, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 65
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 67
    const/4 v6, 0x1

    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    :goto_1
    move v7, v6

    .line 78
    .restart local v7    # "result":I
    goto :goto_0

    .line 70
    .end local v7    # "result":I
    .restart local v1    # "key":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    .line 71
    invoke-virtual {v5, v10, v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "normalizedKey":Ljava/lang/String;
    invoke-virtual {v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 74
    const/4 v6, 0x1

    .line 75
    goto :goto_1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preference_autoip_exceptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 82
    invoke-static {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    .line 83
    .local v3, "numbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 84
    const v5, 0x7f0b03db

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    :goto_0
    return-object v5

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 89
    .local v1, "count":I
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 90
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_2
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 99
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ne v1, v5, :cond_4

    .line 100
    const v5, 0x7f0b041e

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 102
    :cond_4
    const v5, 0x7f0b041f

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "numbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 233
    .local v1, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 235
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method private static loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v3, "numbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 242
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 243
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 245
    new-instance v6, Landroid/util/Pair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lcom/android/phone/settings/AutoIpExceptionSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V

    goto :goto_0

    .line 249
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    return-object v3
.end method

.method private processPickResult(Landroid/content/Intent;)V
    .locals 17
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 163
    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v16

    .line 166
    .local v16, "uris":[Landroid/os/Parcelable;
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    array-length v1, v0

    if-lez v1, :cond_7

    .line 167
    move-object/from16 v7, v16

    .local v7, "arr$":[Landroid/os/Parcelable;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v14, v7, v10

    .local v14, "p":Landroid/os/Parcelable;
    move-object v15, v14

    .line 168
    check-cast v15, Landroid/net/Uri;

    .line 169
    .local v15, "uri":Landroid/net/Uri;
    const-string v1, "tel"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 171
    .local v13, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mNumbers:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v13, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/phone/settings/AutoIpExceptionSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V

    .line 167
    .end local v13    # "number":Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 175
    .end local v14    # "p":Landroid/os/Parcelable;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v11, "idSetBuilder":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .line 177
    .local v9, "first":Z
    move-object/from16 v7, v16

    array-length v12, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_4

    aget-object v14, v7, v10

    .restart local v14    # "p":Landroid/os/Parcelable;
    move-object v15, v14

    .line 178
    check-cast v15, Landroid/net/Uri;

    .line 179
    .restart local v15    # "uri":Landroid/net/Uri;
    const-string v1, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    if-eqz v9, :cond_3

    .line 181
    const/4 v9, 0x0

    .line 182
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 184
    :cond_3
    const/16 v1, 0x2c

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 189
    .end local v14    # "p":Landroid/os/Parcelable;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_4
    if-nez v9, :cond_6

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 190
    const/4 v8, 0x0

    .line 191
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/phone/settings/AutoIpExceptionSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 192
    if-eqz v8, :cond_6

    .line 194
    :goto_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mNumbers:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/phone/settings/AutoIpExceptionSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 199
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->saveNumbers()V

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->updateAdapterData()V

    .line 207
    .end local v7    # "arr$":[Landroid/os/Parcelable;
    .end local v9    # "first":Z
    .end local v10    # "i$":I
    .end local v11    # "idSetBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "len$":I
    :cond_7
    return-void
.end method

.method private saveNumbers()V
    .locals 6

    .prologue
    .line 253
    invoke-static {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 254
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 257
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mNumbers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 258
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 261
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method private updateAdapterData()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mNumbers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 213
    .local v9, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "number"

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "name"

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Lcom/android/phone/settings/AutoIpExceptionSetting$1;

    const v4, 0x7f040004

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/settings/AutoIpExceptionSetting$1;-><init>(Lcom/android/phone/settings/AutoIpExceptionSetting;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 228
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mList:Lmiui/widget/EditableListView;

    iget-object v1, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    return-void

    .line 219
    :array_0
    .array-data 4
        0x7f07000c
        0x7f07000d
    .end array-data
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 152
    packed-switch p1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_0
    if-eqz p3, :cond_0

    .line 155
    invoke-direct {p0, p3}, Lcom/android/phone/settings/AutoIpExceptionSetting;->processPickResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->setContentView(I)V

    .line 112
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/EditableListView;

    iput-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mList:Lmiui/widget/EditableListView;

    .line 113
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mList:Lmiui/widget/EditableListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AutoIpExceptionSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mList:Lmiui/widget/EditableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setChoiceMode(I)V

    .line 115
    new-instance v0, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;-><init>(Lcom/android/phone/settings/AutoIpExceptionSetting;Lcom/android/phone/settings/AutoIpExceptionSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mModeCallBack:Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;

    .line 116
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mList:Lmiui/widget/EditableListView;

    iget-object v1, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mModeCallBack:Lcom/android/phone/settings/AutoIpExceptionSetting$ModeCallback;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 117
    invoke-static {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/AutoIpExceptionSetting;->mNumbers:Ljava/util/HashMap;

    .line 118
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->updateAdapterData()V

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    sget v1, Lmiui/R$attr;->actionBarNewIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .local v0, "newDrawable":Landroid/graphics/drawable/Drawable;
    const v1, 0x7f0b040d

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 126
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 132
    .local v1, "itemId":I
    sparse-switch v1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 135
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->finish()V

    goto :goto_0

    .line 138
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v3, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v3, "android.intent.extra.include_unknown_numbers"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/settings/AutoIpExceptionSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
