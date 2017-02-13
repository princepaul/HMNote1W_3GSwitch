.class public Lcom/android/phone/settings/TitleIconPreference;
.super Landroid/preference/Preference;
.source "TitleIconPreference.java"


# instance fields
.field private mTitleIconResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/TitleIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 31
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/phone/settings/TitleIconPreference;->mTitleIconResId:I

    if-lez v1, :cond_0

    .line 34
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 35
    iget v1, p0, Lcom/android/phone/settings/TitleIconPreference;->mTitleIconResId:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 37
    :cond_0
    return-void
.end method

.method public setTitleIconResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/phone/settings/TitleIconPreference;->mTitleIconResId:I

    .line 26
    return-void
.end method
