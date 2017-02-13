.class Lcom/android/phone/settings/CallAdvancedSetting$2;
.super Lmiui/os/AsyncTaskWithProgress;
.source "CallAdvancedSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallAdvancedSetting;->showRebuildT9IndexDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/AsyncTaskWithProgress",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallAdvancedSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallAdvancedSetting;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/FragmentManager;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/phone/settings/CallAdvancedSetting$2;->this$0:Lcom/android/phone/settings/CallAdvancedSetting;

    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 447
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/CallAdvancedSetting$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 450
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting$2;->this$0:Lcom/android/phone/settings/CallAdvancedSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_REBUILDT9_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    return-object v3
.end method
