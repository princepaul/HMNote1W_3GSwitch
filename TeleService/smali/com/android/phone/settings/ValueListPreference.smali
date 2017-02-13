.class public Lcom/android/phone/settings/ValueListPreference;
.super Landroid/preference/ListPreference;
.source "ValueListPreference.java"


# instance fields
.field private mRightValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/ValueListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget v0, Lmiui/R$layout;->preference_value:I

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/ValueListPreference;->setLayoutResource(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 31
    sget v4, Lmiui/R$id;->value_right:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 32
    .local v3, "valueView":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 33
    iget-object v4, p0, Lcom/android/phone/settings/ValueListPreference;->mRightValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 34
    iget-object v4, p0, Lcom/android/phone/settings/ValueListPreference;->mRightValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    :cond_0
    :goto_0
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    .local v1, "sumView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/phone/settings/ValueListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 43
    .local v2, "value":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 45
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :cond_1
    :goto_1
    sget v4, Lmiui/R$id;->arrow_right:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .local v0, "rightArrowView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    :cond_2
    return-void

    .line 37
    .end local v0    # "rightArrowView":Landroid/widget/ImageView;
    .end local v1    # "sumView":Landroid/widget/TextView;
    .end local v2    # "value":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 47
    .restart local v1    # "sumView":Landroid/widget/TextView;
    .restart local v2    # "value":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setRightValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/settings/ValueListPreference;->mRightValue:Ljava/lang/String;

    .line 60
    return-void
.end method
