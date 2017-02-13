.class public abstract Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;
.super Ljava/lang/Object;
.source "InternationalCountrySelectDialogHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;
    }
.end annotation


# static fields
.field protected static final MAP_KEY_NAME_COUNTRY_CODE:Ljava/lang/String; = "CountryCode"

.field protected static final MAP_KEY_NAME_COUNTRY_ENGLISH_NAME:Ljava/lang/String; = "CountryEnglisName"

.field protected static final MAP_KEY_NAME_COUNTRY_ISO:Ljava/lang/String; = "CountryISO"

.field protected static final MAP_KEY_NAME_COUNTRY_NAME:Ljava/lang/String; = "CountryName"

.field private static final TAG:Ljava/lang/String; = "InternationalCountrySelectDialogHandler"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCountryInfoMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCountryListView:Landroid/widget/ListView;

.field protected mCountrySelectListener:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;

.field protected mDefaultCountryISOList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDialog:Landroid/app/Dialog;

.field protected mDialogView:Landroid/view/View;

.field protected mIsInflated:Z

.field protected mIsMoreButtonClicked:Z

.field protected mListAdapter:Landroid/widget/SimpleAdapter;

.field protected mMoreButton:Landroid/widget/Button;

.field protected mNoSearchResult:Landroid/widget/TextView;

.field protected mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countrySelectListener"    # Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103006e

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountrySelectListener:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    .line 65
    return-void
.end method

.method private addDefaultCountryInfoToMapList(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "countryInfoMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p2, "defaultCountryISOList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 176
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->isSameMapItemExits(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    new-instance v2, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v2, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v1, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "CountryISO"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v4, "CountryCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v3, "CountryName"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v3, "CountryEnglisName"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v1    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    return-void
.end method

.method private addSupportedCountryInfoToMapList(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "countryInfoMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v8

    .line 192
    .local v8, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 194
    .local v1, "countryCodeKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 195
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 196
    .local v0, "countryCode":Ljava/lang/Integer;
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 197
    .local v7, "regionCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator2":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 198
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    .local v2, "countryISO":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->isSameMapItemExits(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 200
    new-instance v6, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v6, "locale":Ljava/util/Locale;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v3, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "CountryISO"

    invoke-interface {v3, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v9, "CountryCode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v9, "CountryName"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v9, "CountryEnglisName"

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v0    # "countryCode":Ljava/lang/Integer;
    .end local v2    # "countryISO":Ljava/lang/String;
    .end local v3    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "iterator2":Ljava/util/Iterator;
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "regionCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private getCountryInfoMapList(Ljava/util/ArrayList;Z)Ljava/util/List;
    .locals 1
    .param p2, "onlyDefaultOnes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "defaultCountryISOList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "countryInfoMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0, v0, p1}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->addDefaultCountryInfoToMapList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 167
    if-nez p2, :cond_0

    .line 168
    invoke-direct {p0, v0}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->addSupportedCountryInfoToMapList(Ljava/util/List;)V

    .line 170
    :cond_0
    return-object v0
.end method

.method private isSameMapItemExits(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "countryISO"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "countryInfoMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 214
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 216
    .local v0, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "CountryISO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const/4 v2, 0x1

    .line 220
    .end local v0    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "InternationalCountrySelectDialogHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private searchCountryInfoFromMap(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "searchText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "searchFromList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p3, "searchResultList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 147
    .local v3, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "CountryName"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, "countryName":Ljava/lang/String;
    const-string v6, "CountryCode"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    .local v0, "countryCode":Ljava/lang/String;
    const-string v6, "CountryEnglisName"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, "countryEnglishName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v4, "itemResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "CountryISO"

    const-string v7, "CountryISO"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v6, "CountryCode"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v6, "CountryName"

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v6, "CountryEnglisName"

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v1    # "countryEnglishName":Ljava/lang/String;
    .end local v2    # "countryName":Ljava/lang/String;
    .end local v3    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "itemResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public dismissHandledDialog()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 227
    :cond_0
    return-void
.end method

.method protected abstract initDialogView()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mIsMoreButtonClicked:Z

    .line 92
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->addSupportedCountryInfoToMapList(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 133
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 134
    .local v0, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountrySelectListener:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;

    const-string v1, "CountryISO"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "CountryCode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "CountryName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v1, v4, v2}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;->onCountrySelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 141
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "inputText"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "countryInfoMapListForSearch":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDefaultCountryISOList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->addDefaultCountryInfoToMapList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->addSupportedCountryInfoToMapList(Ljava/util/List;)V

    .line 109
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->searchCountryInfoFromMap(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mMoreButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    .end local v0    # "countryInfoMapListForSearch":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mNoSearchResult:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 128
    return v3

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDefaultCountryISOList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->addDefaultCountryInfoToMapList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 113
    iget-boolean v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mIsMoreButtonClicked:Z

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mMoreButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->addSupportedCountryInfoToMapList(Ljava/util/List;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mMoreButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mNoSearchResult:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public showCountrySelectDialog(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "defaultCountryISOList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 68
    iput-object p1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDefaultCountryISOList:Ljava/util/ArrayList;

    .line 69
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 70
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDefaultCountryISOList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->addDefaultCountryInfoToMapList(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 71
    iget-boolean v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mIsInflated:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mMoreButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    const-string v2, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 82
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mNoSearchResult:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 85
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->initDialogView()V

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mIsInflated:Z

    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 78
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method
