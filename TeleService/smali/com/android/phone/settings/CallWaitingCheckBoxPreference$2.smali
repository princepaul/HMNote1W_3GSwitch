.class Lcom/android/phone/settings/CallWaitingCheckBoxPreference$2;
.super Ljava/lang/Object;
.source "CallWaitingCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$2;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$2;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->isOpen:Z
    invoke-static {v0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$100(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$2;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->setChecked(Z)V

    .line 98
    :cond_0
    return-void
.end method
