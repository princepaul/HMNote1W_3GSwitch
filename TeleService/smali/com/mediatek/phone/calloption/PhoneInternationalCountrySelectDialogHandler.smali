.class public Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;
.super Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;
.source "PhoneInternationalCountrySelectDialogHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneInternationalCountrySelectDialogHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countrySelectListener"    # Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;-><init>(Landroid/content/Context;Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;)V

    .line 23
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "PhoneInternationalCountrySelectDialogHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method


# virtual methods
.method protected initDialogView()V
    .locals 11

    .prologue
    const v10, 0x7f070061

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 26
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 29
    .local v6, "countryListView":Landroid/widget/ListView;
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mCountryInfoMapList:Ljava/util/List;

    const v3, 0x7f040021

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "CountryName"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    const-string v7, "CountryCode"

    aput-object v7, v4, v5

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleAdapter;

    .line 33
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mListAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    .line 37
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 38
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v8}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 39
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mContext:Landroid/content/Context;

    const v2, 0x104000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v8}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 41
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 43
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mNoSearchResult:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mCountryListView:Landroid/widget/ListView;

    .line 46
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mDialogView:Landroid/view/View;

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mMoreButton:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mMoreButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mContext:Landroid/content/Context;

    const v2, 0x10403c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;->mMoreButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x7f070064
        0x7f070063
    .end array-data
.end method
