.class Lcom/android/phone/settings/AutoIpSetting$1;
.super Ljava/lang/Object;
.source "AutoIpSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/AutoIpSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoIpSetting;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoIpSetting;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/settings/AutoIpSetting$1;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    iput-object p2, p0, Lcom/android/phone/settings/AutoIpSetting$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 109
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting$1;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting$1;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    # getter for: Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/settings/AutoIpSetting;->access$000(Lcom/android/phone/settings/AutoIpSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting$1;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpEnable(Landroid/content/ContentResolver;Z)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting$1;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    # getter for: Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/phone/settings/AutoIpSetting;->access$100(Lcom/android/phone/settings/AutoIpSetting;)Landroid/preference/EditTextPreference;

    move-result-object v0

    const v1, 0x7f0b041a

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 114
    :cond_0
    return-void
.end method
