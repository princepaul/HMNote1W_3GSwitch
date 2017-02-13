.class Lcom/android/phone/settings/EditCustomLocationActivity$3;
.super Ljava/lang/Object;
.source "EditCustomLocationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EditCustomLocationActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 141
    iput-object p1, p0, Lcom/android/phone/settings/EditCustomLocationActivity$3;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity$3;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-virtual {v0}, Lcom/android/phone/settings/EditCustomLocationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/settings/EditCustomLocationActivity$3;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    # getter for: Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I
    invoke-static {v5}, Lcom/android/phone/settings/EditCustomLocationActivity;->access$200(Lcom/android/phone/settings/EditCustomLocationActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity$3;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-virtual {v0}, Lcom/android/phone/settings/EditCustomLocationActivity;->finish()V

    .line 151
    return-void
.end method
