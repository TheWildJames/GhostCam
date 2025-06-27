#!/bin/bash
echo "=== Available Gradle Tasks ==="
./gradlew tasks --all

echo ""
echo "=== Project Structure ==="
find . -name "build.gradle*" -type f

echo ""
echo "=== Android Plugin Check ==="
grep -r "com.android.application" . || echo "Android plugin not found"