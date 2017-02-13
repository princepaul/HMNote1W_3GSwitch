.class Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CustomLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/settings/CustomLocationActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/settings/CustomLocationActivity;

    .line 169
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 174
    if-eqz p3, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/phone/settings/CustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/settings/CustomLocationActivity;

    # invokes: Lcom/android/phone/settings/CustomLocationActivity;->changeCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/phone/settings/CustomLocationActivity;->access$100(Lcom/android/phone/settings/CustomLocationActivity;Landroid/database/Cursor;)V

    .line 177
    :cond_0
    return-void
.end method
