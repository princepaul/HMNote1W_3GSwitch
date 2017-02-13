.class Lcom/android/phone/settings/TelocationSetting$2;
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

.field final synthetic val$countryCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/TelocationSetting;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/settings/TelocationSetting$2;->this$0:Lcom/android/phone/settings/TelocationSetting;

    iput-object p2, p0, Lcom/android/phone/settings/TelocationSetting$2;->val$countryCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/phone/settings/TelocationSetting$2;->this$0:Lcom/android/phone/settings/TelocationSetting;

    iget-object v1, p0, Lcom/android/phone/settings/TelocationSetting$2;->val$countryCode:Ljava/lang/String;

    # invokes: Lcom/android/phone/settings/TelocationSetting;->updateCountryCode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/TelocationSetting;->access$200(Lcom/android/phone/settings/TelocationSetting;Ljava/lang/String;)V

    .line 88
    return-void
.end method
