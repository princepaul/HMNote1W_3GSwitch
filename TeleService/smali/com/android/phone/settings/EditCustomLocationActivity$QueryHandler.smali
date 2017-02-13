.class Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditCustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditCustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditCustomLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/settings/EditCustomLocationActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    .line 288
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 289
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 294
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-virtual {v0}, Lcom/android/phone/settings/EditCustomLocationActivity;->finish()V

    .line 295
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-virtual {v0}, Lcom/android/phone/settings/EditCustomLocationActivity;->finish()V

    .line 301
    return-void
.end method
