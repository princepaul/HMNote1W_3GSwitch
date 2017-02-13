.class public Lcom/mediatek/phone/ext/DefaultSimPreferenceExtension;
.super Landroid/content/ContextWrapper;
.source "DefaultSimPreferenceExtension.java"

# interfaces
.implements Lcom/mediatek/phone/ext/IDefaultSimPreferenceExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public updateDefaultSimPreferenceLayout(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 55
    return-void
.end method

.method public updateDefaultSimPreferenceSimIndicator(Landroid/view/View;I)V
    .locals 0
    .param p1, "viewContainer"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 64
    return-void
.end method
