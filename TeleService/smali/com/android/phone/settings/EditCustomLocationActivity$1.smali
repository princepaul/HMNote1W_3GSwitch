.class Lcom/android/phone/settings/EditCustomLocationActivity$1;
.super Ljava/lang/Object;
.source "EditCustomLocationActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EditCustomLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditCustomLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EditCustomLocationActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/settings/EditCustomLocationActivity$1;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity$1;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    # invokes: Lcom/android/phone/settings/EditCustomLocationActivity;->resetDoneButtonEnabled()V
    invoke-static {v0}, Lcom/android/phone/settings/EditCustomLocationActivity;->access$100(Lcom/android/phone/settings/EditCustomLocationActivity;)V

    .line 89
    return-void
.end method
