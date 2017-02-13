.class Lcom/android/phone/settings/AutoIpSetting$3;
.super Ljava/lang/Object;
.source "AutoIpSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/AutoIpSetting;->alertToInputCurrentAreaCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoIpSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoIpSetting;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/settings/AutoIpSetting$3;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting$3;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting$3;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    # getter for: Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/phone/settings/AutoIpSetting;->access$100(Lcom/android/phone/settings/AutoIpSetting;)Landroid/preference/EditTextPreference;

    move-result-object v1

    # invokes: Lcom/android/phone/settings/AutoIpSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/AutoIpSetting;->access$300(Lcom/android/phone/settings/AutoIpSetting;Landroid/preference/Preference;)V

    .line 202
    return-void
.end method
