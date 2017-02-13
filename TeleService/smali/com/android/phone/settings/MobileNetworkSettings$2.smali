.class Lcom/android/phone/settings/MobileNetworkSettings$2;
.super Landroid/database/ContentObserver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/MobileNetworkSettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MobileNetworkSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/phone/settings/MobileNetworkSettings$2;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    .line 303
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 304
    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings$2;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    # getter for: Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/settings/MobileNetworkSettings;->access$000(Lcom/android/phone/settings/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings$2;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 307
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings$2;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    # getter for: Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/settings/MobileNetworkSettings;->access$000(Lcom/android/phone/settings/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 309
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings$2;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    # getter for: Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/settings/MobileNetworkSettings;->access$100(Lcom/android/phone/settings/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings$2;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    # getter for: Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/settings/MobileNetworkSettings;->access$100(Lcom/android/phone/settings/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings$2;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-virtual {v3}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "always_enable_mms"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    :cond_1
    return-void

    .line 310
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
