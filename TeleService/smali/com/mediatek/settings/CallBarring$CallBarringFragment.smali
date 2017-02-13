.class public Lcom/mediatek/settings/CallBarring$CallBarringFragment;
.super Landroid/preference/PreferenceFragment;
.source "CallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallBarringFragment"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/settings/CallBarring;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 131
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    .line 133
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->addPreferencesFromResource(I)V

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 136
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    const-string v3, "all_outing_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CallBarringBasePreference;

    # setter for: Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/CallBarring;->access$102(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;

    .line 138
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    const-string v3, "all_outing_international_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CallBarringBasePreference;

    # setter for: Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/CallBarring;->access$202(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;

    .line 140
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    const-string v3, "all_outing_except_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CallBarringBasePreference;

    # setter for: Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/CallBarring;->access$302(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;

    .line 142
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    const-string v3, "all_incoming_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CallBarringBasePreference;

    # setter for: Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/CallBarring;->access$402(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;

    .line 144
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    const-string v3, "all_incoming_except_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CallBarringBasePreference;

    # setter for: Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/CallBarring;->access$502(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringBasePreference;

    .line 146
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    const-string v3, "deactivate_all_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CallBarringResetPreference;

    # setter for: Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;
    invoke-static {v2, v3}, Lcom/mediatek/settings/CallBarring;->access$602(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/mediatek/settings/CallBarringResetPreference;

    .line 148
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    const-string v3, "change_password_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CallBarringChangePassword;

    # setter for: Lcom/mediatek/settings/CallBarring;->mCallChangePassword:Lcom/mediatek/settings/CallBarringChangePassword;
    invoke-static {v2, v3}, Lcom/mediatek/settings/CallBarring;->access$702(Lcom/mediatek/settings/CallBarring;Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/mediatek/settings/CallBarringChangePassword;

    .line 150
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # invokes: Lcom/mediatek/settings/CallBarring;->initial()V
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$800(Lcom/mediatek/settings/CallBarring;)V

    .line 151
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # invokes: Lcom/mediatek/settings/CallBarring;->initSlotId()V
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$900(Lcom/mediatek/settings/CallBarring;)V

    .line 152
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$1000(Lcom/mediatek/settings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$100(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$1000(Lcom/mediatek/settings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$200(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$1000(Lcom/mediatek/settings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$300(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$1000(Lcom/mediatek/settings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$400(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$1000(Lcom/mediatek/settings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$500(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$100(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringInterface;

    invoke-virtual {v3, v2}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 159
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$200(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringInterface;

    invoke-virtual {v3, v2}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 160
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$300(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringInterface;

    invoke-virtual {v3, v2}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 161
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$400(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringInterface;

    invoke-virtual {v3, v2}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 162
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$500(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringBasePreference;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringInterface;

    invoke-virtual {v3, v2}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 163
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$600(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringResetPreference;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringInterface;

    iget-object v3, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/CallBarring;->access$000(Lcom/mediatek/settings/CallBarring;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/settings/CallBarringResetPreference;->setCallBarringInterface(Lcom/mediatek/settings/CallBarringInterface;I)V

    .line 164
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mCallChangePassword:Lcom/mediatek/settings/CallBarringChangePassword;
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$700(Lcom/mediatek/settings/CallBarring;)Lcom/mediatek/settings/CallBarringChangePassword;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CallBarring;

    # getter for: Lcom/mediatek/settings/CallBarring;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/CallBarring;->access$000(Lcom/mediatek/settings/CallBarring;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/settings/CallBarringChangePassword;->setTimeConsumingListener(Lcom/android/phone/TimeConsumingPreferenceListener;I)V

    .line 166
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 167
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # setter for: Lcom/mediatek/settings/CallBarring;->mFirstResume:Z
    invoke-static {v2, v5}, Lcom/mediatek/settings/CallBarring;->access$1102(Lcom/mediatek/settings/CallBarring;Z)Z

    .line 173
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # invokes: Lcom/mediatek/settings/CallBarring;->initVTSetting()V
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$1200(Lcom/mediatek/settings/CallBarring;)V

    .line 174
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$CallBarringFragment;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarring;

    # invokes: Lcom/mediatek/settings/CallBarring;->registerCallBacks()V
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$1300(Lcom/mediatek/settings/CallBarring;)V

    .line 175
    return-void
.end method
