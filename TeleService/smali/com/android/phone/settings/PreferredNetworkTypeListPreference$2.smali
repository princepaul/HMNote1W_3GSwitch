.class Lcom/android/phone/settings/PreferredNetworkTypeListPreference$2;
.super Ljava/lang/Object;
.source "PreferredNetworkTypeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$2;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$2;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$2;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    # getter for: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$200(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Ljava/lang/String;)V

    .line 206
    return-void
.end method
