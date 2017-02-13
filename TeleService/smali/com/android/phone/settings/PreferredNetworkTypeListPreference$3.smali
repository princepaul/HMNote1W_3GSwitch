.class Lcom/android/phone/settings/PreferredNetworkTypeListPreference$3;
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

.field final synthetic val$networkType:I


# direct methods
.method constructor <init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;I)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$3;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    iput p2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$3;->val$networkType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$3;->this$0:Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    iget v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$3;->val$networkType:I

    # invokes: Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->handleClick(I)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->access$300(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;I)V

    .line 201
    return-void
.end method
