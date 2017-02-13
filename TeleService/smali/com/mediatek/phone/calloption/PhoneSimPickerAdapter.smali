.class public Lcom/mediatek/phone/calloption/PhoneSimPickerAdapter;
.super Lcom/mediatek/calloption/SimPickerAdapter;
.source "PhoneSimPickerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suggestedSimId"    # J
    .param p4, "isMultiSim"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/calloption/SimPickerAdapter;-><init>(Landroid/content/Context;JZ)V

    .line 19
    return-void
.end method


# virtual methods
.method protected createView(Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;I)Landroid/view/View;
    .locals 4
    .param p1, "holder"    # Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 22
    iget-object v2, p0, Lcom/mediatek/phone/calloption/PhoneSimPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 23
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 24
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 25
    const v2, 0x7f040036

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 26
    const v2, 0x7f0700a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    .line 27
    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    .line 28
    const v2, 0x7f0700a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    .line 29
    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    .line 30
    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    .line 31
    const v2, 0x7f07008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    .line 32
    const v2, 0x7f0700a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/ImageView;

    .line 41
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 34
    const v2, 0x7f040037

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mInternetIcon:Landroid/widget/ImageView;

    goto :goto_0

    .line 36
    :cond_2
    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 38
    :cond_3
    const v2, 0x7f040038

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    const v2, 0x7f0700a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    goto :goto_0
.end method
