.class Lcom/android/phone/settings/TelocationSetting$4;
.super Ljava/lang/Object;
.source "TelocationSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/TelocationSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 293
    iput-object p1, p0, Lcom/android/phone/settings/TelocationSetting$4;->this$0:Lcom/android/phone/settings/TelocationSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 296
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting$4;->this$0:Lcom/android/phone/settings/TelocationSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/TelocationSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->getContactCountrycode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting$4;->this$0:Lcom/android/phone/settings/TelocationSetting;

    # setter for: Lcom/android/phone/settings/TelocationSetting;->mIsAutoAddCountryCode:Z
    invoke-static {v0, v1}, Lcom/android/phone/settings/TelocationSetting;->access$302(Lcom/android/phone/settings/TelocationSetting;Z)Z

    .line 299
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting$4;->this$0:Lcom/android/phone/settings/TelocationSetting;

    iget-object v1, p0, Lcom/android/phone/settings/TelocationSetting$4;->this$0:Lcom/android/phone/settings/TelocationSetting;

    # getter for: Lcom/android/phone/settings/TelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/phone/settings/TelocationSetting;->access$000(Lcom/android/phone/settings/TelocationSetting;)Landroid/preference/EditTextPreference;

    move-result-object v1

    # invokes: Lcom/android/phone/settings/TelocationSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/TelocationSetting;->access$100(Lcom/android/phone/settings/TelocationSetting;Landroid/preference/Preference;)V

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting$4;->this$0:Lcom/android/phone/settings/TelocationSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/TelocationSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoCountryCodeEnable(Landroid/content/ContentResolver;Z)V

    .line 303
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting$4;->this$0:Lcom/android/phone/settings/TelocationSetting;

    # getter for: Lcom/android/phone/settings/TelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/settings/TelocationSetting;->access$400(Lcom/android/phone/settings/TelocationSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
