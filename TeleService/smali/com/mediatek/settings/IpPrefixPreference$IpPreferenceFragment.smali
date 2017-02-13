.class public Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "IpPrefixPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/IpPrefixPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpPreferenceFragment"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/IpPrefixPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/IpPrefixPreference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    .line 80
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->addPreferencesFromResource(I)V

    .line 81
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/IpPrefixPreference;

    const-string v1, "button_ip_prefix_edit_key"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    # setter for: Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;
    invoke-static {v0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->access$102(Lcom/mediatek/settings/IpPrefixPreference;Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;

    .line 82
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/IpPrefixPreference;

    # getter for: Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/mediatek/settings/IpPrefixPreference;->access$100(Lcom/mediatek/settings/IpPrefixPreference;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/IpPrefixPreference;

    # invokes: Lcom/mediatek/settings/IpPrefixPreference;->initSlotId()V
    invoke-static {v0}, Lcom/mediatek/settings/IpPrefixPreference;->access$200(Lcom/mediatek/settings/IpPrefixPreference;)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/IpPrefixPreference;

    # invokes: Lcom/mediatek/settings/IpPrefixPreference;->registerCallBacks()V
    invoke-static {v0}, Lcom/mediatek/settings/IpPrefixPreference;->access$300(Lcom/mediatek/settings/IpPrefixPreference;)V

    .line 87
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/IpPrefixPreference;

    # getter for: Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/mediatek/settings/IpPrefixPreference;->access$100(Lcom/mediatek/settings/IpPrefixPreference;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/IpPrefixPreference;

    # getter for: Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/mediatek/settings/IpPrefixPreference;->access$100(Lcom/mediatek/settings/IpPrefixPreference;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 92
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/IpPrefixPreference;

    # getter for: Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/mediatek/settings/IpPrefixPreference;->access$100(Lcom/mediatek/settings/IpPrefixPreference;)Landroid/preference/EditTextPreference;

    move-result-object v0

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference$IpPreferenceFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/IpPrefixPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/settings/IpPrefixPreference;->saveIpPrefix(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->access$400(Lcom/mediatek/settings/IpPrefixPreference;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    return v0
.end method
