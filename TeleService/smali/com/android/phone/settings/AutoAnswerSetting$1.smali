.class Lcom/android/phone/settings/AutoAnswerSetting$1;
.super Ljava/lang/Object;
.source "AutoAnswerSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/AutoAnswerSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoAnswerSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoAnswerSetting;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/settings/AutoAnswerSetting$1;->this$0:Lcom/android/phone/settings/AutoAnswerSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 46
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 47
    .local v0, "enable":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/phone/settings/AutoAnswerSetting$1;->this$0:Lcom/android/phone/settings/AutoAnswerSetting;

    const-string v2, "button_auto_answer_delay"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 48
    iget-object v1, p0, Lcom/android/phone/settings/AutoAnswerSetting$1;->this$0:Lcom/android/phone/settings/AutoAnswerSetting;

    const-string v2, "button_auto_answer_scenario"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 49
    const/4 v1, 0x1

    return v1
.end method
