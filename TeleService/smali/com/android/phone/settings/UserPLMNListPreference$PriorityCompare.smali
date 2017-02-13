.class Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;
.super Ljava/lang/Object;
.source "UserPLMNListPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/UserPLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PriorityCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/UserPLMNListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/UserPLMNListPreference;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;->this$0:Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)I
    .locals 2
    .param p1, "object1"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;
    .param p2, "object2"    # Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .prologue
    .line 326
    invoke-virtual {p1}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 323
    check-cast p1, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/settings/UserPLMNListPreference$PriorityCompare;->compare(Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;)I

    move-result v0

    return v0
.end method
