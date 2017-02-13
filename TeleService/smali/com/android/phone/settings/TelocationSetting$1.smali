.class Lcom/android/phone/settings/TelocationSetting$1;
.super Ljava/lang/Object;
.source "TelocationSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/TelocationSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/TelocationSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/TelocationSetting;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/settings/TelocationSetting$1;->this$0:Lcom/android/phone/settings/TelocationSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting$1;->this$0:Lcom/android/phone/settings/TelocationSetting;

    iget-object v1, p0, Lcom/android/phone/settings/TelocationSetting$1;->this$0:Lcom/android/phone/settings/TelocationSetting;

    # getter for: Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/phone/settings/TelocationSetting;->access$000(Lcom/android/phone/settings/TelocationSetting;)Landroid/preference/EditTextPreference;

    move-result-object v1

    # invokes: Lcom/android/phone/settings/TelocationSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/TelocationSetting;->access$100(Lcom/android/phone/settings/TelocationSetting;Landroid/preference/Preference;)V

    .line 94
    return-void
.end method
